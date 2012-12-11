ROOT_DIR:= $(PWD)
MKJFFS2:=/usr/sbin/mkfs.jffs2
MKVFAT:=/sbin/mkfs.vfat

# These aren't created by make, but are needed
APEX_FLASH:=APEX/apex_flash.bin
APEX_SD:=APEX/apex_sd.bin
INITRAMFS:=KERNEL/zImage_unpacked/initramfs
ROOTFS:=ROOTFS
SD_MBR:=SD_MBR.bin
CAM:=CAM/mca_cam.upb
CAIDS:=CAM/CAIDS
CAM_VERSION:=CAM/VERSION
CAM_NAME:=CAM/NAME

# These are created by make
ZIMAGE:=KERNEL/zImage_packing/zImage
MCA_CARD:=SD_CONTENT/mca_carx.bin
JFFS2:=SD_CONTENT/rootfx.jffs
SD_FAT:=SD_CONTENT.fat
FULL_IMG:=full_sd_image.img
SD_MNT:=SD_MNT

all: $(MCA_CARD) $(JFFS2) $(CAM)

.PHONY: zImage
zImage:  $(ZIMAGE)
$(ZIMAGE): $(INITRAMFS)
	cd KERNEL/ && PATH=$(PATH):$(ROOT_DIR)/tools/ $(ROOT_DIR)/tools/repack-zImage.sh -p

.PHONY: mca_card.bin
mca_card.bin:  $(MCA_CARD)
$(MCA_CARD): $(ZIMAGE) $(APEX_FLASH)
	dd if=/dev/zero of=$(MCA_CARD) bs=1024 count=640
	dd if=$(APEX_FLASH) of=$(MCA_CARD) bs=512 conv=notrunc
	dd if=$(ZIMAGE) of=$(MCA_CARD) bs=1024 seek=640 conv=notrunc

.PHONY: rootfs.jffs2
rootfs.jffs2:  $(JFFS2)
$(JFFS2): $(ROOTFS) $(CAM)
	$(MKJFFS2) -r $(ROOTFS) -o $(JFFS2) -e 128 -l -n -q -p
	tools/mca_tool.pl -r $(JFFS2)

$(SD_FAT): $(JFFS2) $(MCA_CARD)
	dd if=/dev/zero of=$(SD_FAT) bs=1024 count=1879716
	$(MKVFAT) -F 16 -n mca_ng $(SD_FAT)
	mkdir $(SD_MNT)
	sudo mount -o loop $(SD_FAT) $(SD_MNT)
	sudo cp -r SD_CONTENT/* $(SD_MNT)/
	sudo umount $(SD_MNT)
	rm -rf $(SD_MNT)

.PHONY: image
image:  $(FULL_IMG)
$(FULL_IMG): $(SD_FAT) $(APEX_SD) $(SD_MBR)
	dd if=/dev/zero of=$(FULL_IMG) bs=512 count=80103
	dd if=$(SD_MBR) of=$(FULL_IMG) bs=512 conv=notrunc
	dd if=$(APEX_SD) of=$(FULL_IMG) bs=512 seek=62 conv=notrunc
	dd if=$(SD_FAT) of=$(FULL_IMG) oflag=append conv=notrunc

.PHONY: mca_cam.upb
mca_cam.upb:  $(CAM)
$(CAM): $(CAIDS) $(CAM_VERSION) $(CAM_NAME)
	tools/mca_tool.pl -r -R `cat $(CAIDS)` -N `cat $(CAM_NAME)` -v `cat $(CAM_VERSION)` $(CAM)

clean:
	rm -rf KERNEL/zImage_packing
	rm -rf $(SD_FAT)

distclean: clean
	rm -rf $(FULL_IMG)


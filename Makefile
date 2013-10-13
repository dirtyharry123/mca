ROOT_DIR:= $(PWD)
MKJFFS2:=/usr/sbin/mkfs.jffs2
MKVFAT:=/sbin/mkfs.vfat

# These files and directories need to exist
APEX_FLASH:=BLOBS/apex_flash.bin
APEX_SD:=BLOBS/apex_sd.bin
INITRAMFS:=KERNEL/zImage_unpacked/initramfs
ROOTFS:=ROOTFS
SD_MBR:=BLOBS/SD_MBR.bin
SD_MBR_1G:=BLOBS/SD_MBR_1G.bin
CAM:=BLOBS/mca_cam.upb
CAIDS:=CONFIG/CAIDS
CAM_VERSION:=CONFIG/CAM_VERSION
CAM_NAME:=CONFIG/CAM_NAME
MCABOOT_INI:=CONFIG/mcaboot.ini
MCA_INI:=CONFIG/mca.ini
RELEASE:=CONFIG/RELEASE
APEX_SD_CMD:=CONFIG/APEX_SD_CMD
APEX_SD_CMD_BOOT:=CONFIG/APEX_SD_CMD_BOOT
APEX_FLASH_CMD:=CONFIG/APEX_FLASH_CMD
SD_CONTENT:=distribution/SD_CONTENT

# These are created by make
ZIMAGE:=KERNEL/zImage_packing/zImage
ZIMAGE_NEW:=SRC/KERNEL/linux-2.6.28.2/arch/arm/boot/zImage
MCA_CARD:=$(SD_CONTENT)/mca_card.bin
JFFS2:=$(SD_CONTENT)/rootfs.jffs2
SD_FAT:=SD_CONTENT.fat
SD_FAT_1G:=SD_CONTENT_1G.fat
FULL_IMG:=distribution/full_sd_image.img
FULL_IMG_1G:=distribution/full_sd_image_1G.img
SD_MNT:=SD_MNT

all: $(FULL_IMG)

.PHONY: apex_sd.bin
apex_sd.bin: $(APEX_SD)
$(APEX_SD): $(APEX_SD_CMD)
	tools/apex_tool.pl -s -r "`cat $(APEX_SD_CMD)`" $(APEX_SD)

.PHONY: apex_flash.bin
apex_flash.bin: $(APEX_SD)
$(APEX_FLASH): $(APEX_FLASH_CMD)
	tools/apex_tool.pl -f -r "`cat $(APEX_FLASH_CMD)`" $(APEX_FLASH)
	
.PHONY: zImage
zImage:  $(ZIMAGE)
$(ZIMAGE): $(INITRAMFS) $(MCABOOT_INI)
	cp $(MCABOOT_INI) $(INITRAMFS)/mca_default.ini
	cd KERNEL/ && PATH=$(PATH):$(ROOT_DIR)/tools/ $(ROOT_DIR)/tools/repack-zImage.sh -p

.PHONY: zImage_new
zImage_new: $(ZIMAGE_NEW)
$(ZIMAGE_NEW): SRC/KERNEL/linux-2.6.28.2/
	cd SRC/KERNEL && $(MAKE)

.PHONY: mca_card.bin
mca_card.bin:  $(MCA_CARD)
$(MCA_CARD): $(ZIMAGE) $(APEX_FLASH)
	dd if=/dev/zero of=$(MCA_CARD) bs=1024 count=640
	dd if=$(APEX_FLASH) of=$(MCA_CARD) bs=512 conv=notrunc
	dd if=$(ZIMAGE) of=$(MCA_CARD) bs=1024 seek=640 conv=notrunc

.PHONY: rootfs.jffs2
rootfs.jffs2:  $(JFFS2)
$(JFFS2): $(ROOTFS)
	$(MKJFFS2) -r $(ROOTFS) -o $(JFFS2) -e 128 -l -n -q -p
	tools/mca_tool.pl -r $(JFFS2)

.PHONY: rootfs
rootfs: $(ROOTFS)
$(ROOTFS): $(ROOTFS)/root/mca_cam.upb $(ROOTFS)/etc/RELEASE

$(ROOTFS)/root/mca_cam.upb: $(CAM)
	cp $(CAM) $(ROOTFS)/root/mca_cam.upb

$(ROOTFS)/etc/RELEASE: $(RELEASE)
	cp $(RELEASE) $(ROOTFS)/etc/RELEASE

.PHONY: sd_content
sd_content: $(SD_CONTENT) 
$(SD_CONTENT): $(JFFS2) $(MCA_CARD) $(SD_CONTENT)/mcaboot.ini $(SD_CONTENT)/mca.ini

$(SD_CONTENT)/mca.ini: $(MCA_INI)
	cp $(MCA_INI) $(SD_CONTENT)/mca.ini

$(SD_CONTENT)/mcaboot.ini: $(MCABOOT_INI)
	cp $(MCABOOT_INI) $(SD_CONTENT)/mcaboot.ini

$(SD_FAT): $(SD_CONTENT)
	dd if=/dev/zero of=$(SD_FAT) bs=1024 count=1879716
	$(MKVFAT) -F 16 -n mca_ng $(SD_FAT)
	mkdir $(SD_MNT)
	sudo mount -o loop $(SD_FAT) $(SD_MNT)
	sudo cp -r $(SD_CONTENT)/* $(SD_MNT)/
	sudo umount $(SD_MNT)
	rm -rf $(SD_MNT)

$(SD_FAT_1G): $(SD_CONTENT)
	dd if=/dev/zero of=$(SD_FAT_1G) bs=1024 count=985181
	$(MKVFAT) -F 16 -n mca_ng $(SD_FAT_1G)
	mkdir $(SD_MNT)
	sudo mount -o loop $(SD_FAT_1G) $(SD_MNT)
	sudo cp -r $(SD_CONTENT)/* $(SD_MNT)/
	sudo umount $(SD_MNT)
	rm -rf $(SD_MNT)

.PHONY: image
image:  $(FULL_IMG)
$(FULL_IMG): $(SD_FAT) $(APEX_SD) $(SD_MBR)
	dd if=/dev/zero of=$(FULL_IMG) bs=512 count=126852
	dd if=$(SD_MBR) of=$(FULL_IMG) bs=512 conv=notrunc
	dd if=$(APEX_SD) of=$(FULL_IMG) bs=512 seek=62 conv=notrunc
	dd if=$(SD_FAT) of=$(FULL_IMG) oflag=append conv=notrunc

.PHONY: image_1G
image_1G:  $(FULL_IMG_1G)
$(FULL_IMG_1G): $(SD_FAT_1G) $(APEX_SD) $(SD_MBR_1G)
	dd if=/dev/zero of=$(FULL_IMG_1G) bs=512 count=126852
	dd if=$(SD_MBR_1G) of=$(FULL_IMG_1G) bs=512 conv=notrunc
	dd if=$(APEX_SD) of=$(FULL_IMG_1G) bs=512 seek=62 conv=notrunc
	dd if=$(SD_FAT_1G) of=$(FULL_IMG_1G) oflag=append conv=notrunc

.PHONY: mca_cam.upb
mca_cam.upb:  $(CAM)
$(CAM): $(CAIDS) $(CAM_VERSION) $(CAM_NAME)
	tools/mca_tool.pl -r -R `cat $(CAIDS)` -N `cat $(CAM_NAME)` -v `cat $(CAM_VERSION)` $(CAM)

clean:
	rm -rf KERNEL/zImage_packing
	rm -rf $(SD_FAT)
	rm -rf $(SD_FAT_1G)

distclean: clean
	rm -rf $(FULL_IMG)
	rm -rf $(FULL_IMG_1G)
	rm -rf $(SD_CONTENT)/*


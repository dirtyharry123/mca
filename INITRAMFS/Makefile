INITRAMFS:= initramfs/
CONSOLE:= $(INITRAMFS)/dev/console
.PHONY: all
all: $(CONSOLE)
$(CONSOLE): $(INITRAMFS)
	mkdir -p $(INITRAMFS)/dev/input $(INITRAMFS)/dev/net $(INITRAMFS)/dev/pts $(INITRAMFS)dev/shm $(INITRAMFS)etc/udhcpc $(INITRAMFS)/man $(INITRAMFS)/mnt $(INITRAMFS)/newroot $(INITRAMFS)/proc $(INITRAMFS)/sys $(INITRAMFS)/tmp $(INITRAMFS)/usr/mca $(INITRAMFS)/usr/work $(INITRAMFS)/var
	sudo mknod -m 600 $(INITRAMFS)/dev/console c 5 1
	sudo mknod -m 666 $(INITRAMFS)/dev/null c 1 3

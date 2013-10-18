NAME := linux
VERSION := 2.6.28.2
URL := https://www.kernel.org/pub/linux/kernel/v2.6/

INITRAMFS := $(PWD)/../../INITRAMFS/initramfs/
TOOLCHAIN := $(PWD)/../../toolchain/Sourcery_G++_Lite-2011.03-41/bin/
export PATH := $(PATH):$(TOOLCHAIN)
export CROSS_COMPILE = arm-none-linux-gnueabi-
export ARCH = arm
export INSTALL_MOD_PATH := $(PWD)/../../ROOTFS

all: zImage

.PHONY: $(INITRAMFS)
$(INITRAMFS):
	$(MAKE) -C $(INITRAMFS)/../

$(NAME)-$(VERSION).tar.bz2:
	wget $(URL)/$(NAME)-$(VERSION).tar.bz2

.PHONY: download
download: $(NAME)-$(VERSION).tar.bz2

.PHONY: extract
extract: $(NAME)-$(VERSION)/.extracted

$(NAME)-$(VERSION)/.extracted: $(NAME)-$(VERSION).tar.bz2
	tar -xjf $(NAME)-$(VERSION).tar.bz2
	touch $(NAME)-$(VERSION)/.extracted

.PHONY: patch
patch: $(NAME)-$(VERSION)/.patched

$(NAME)-$(VERSION)/.patched: $(NAME)-$(VERSION)/.extracted
	@ if [ ! -f $(NAME)-$(VERSION)/.patched ] ; then \
		for i in $(shell ls patches/*.patch) ; do \
			patch -t -p1 -d $(NAME)-$(VERSION)/ <$$i ; \
		done ;\
	fi
	@ touch $(NAME)-$(VERSION)/.patched

$(TOOLCHAIN):
	$(MAKE) -C ../../toolchain

.PHONY: config
config: $(NAME)-$(VERSION)/.config

$(NAME)-$(VERSION)/.config: $(NAME)-$(VERSION)/.patched
	$(MAKE) -C $(NAME)-$(VERSION) mca_defconfig

.PHONY: zImage
zImage: $(NAME)-$(VERSION)/arch/arm/boot/zImage

.PHONY: $(NAME)-$(VERSION)/arch/arm/boot/zImage
$(NAME)-$(VERSION)/arch/arm/boot/zImage: $(NAME)-$(VERSION)/.config $(TOOLCHAIN) $(INITRAMFS)
	$(MAKE) -C $(NAME)-$(VERSION) zImage

.PHONY: modules
modules: config
	$(MAKE) -C $(NAME)-$(VERSION) modules

.PHONY: modules_install
modules_install: modules
	$(MAKE) -C $(NAME)-$(VERSION) modules_install

.PHONY: clean
clean:
	[ -d $(NAME)-$(VERSION) ] && $(MAKE) -C $(NAME)-$(VERSION) clean || [ 1 ]

.PHONY: distclean
distclean: clean
	rm -rf $(NAME)-$(VERSION)
	rm -rf $(NAME)-$(VERSION).tar.bz2

NAME := oscam
VERSION = $(shell [ -e oscam/trunk/config.sh ] && oscam/trunk/config.sh -v || echo 0)
SVN_REV = $(shell [ -e oscam/trunk/config.sh ] && oscam/trunk/config.sh -r || echo svn0)
CHECKOUT_REV := HEAD
URL := http://www.streamboard.tv/svn/oscam

OSCAM = oscam/trunk/Distribution/$(NAME)-$(VERSION)$(SVN_REV)-$(CROSS_COMPILE)mca

TOOLCHAIN := $(PWD)/../../../toolchain/Sourcery_G++_Lite-2011.03-41/bin/
export PATH := $(PATH):$(TOOLCHAIN)
export CROSS_COMPILE = arm-none-linux-gnueabi-
export ARCH = arm

all: oscam

.PHONY: download
download: oscam/trunk

.PHONY: oscam/trunk
oscam/trunk:
	svn co -r $(CHECKOUT_REV) $(URL)

$(TOOLCHAIN):
	$(MAKE) -C ../../../toolchain

.PHONY: config
config: oscam/trunk/config.h

oscam/trunk/config.h: oscam/trunk config.h
	cp config.h oscam/trunk/config.h

.PHONY: oscam
oscam: $(OSCAM)

.PHONY: $(OSCAM)
$(OSCAM): oscam/trunk/config.h $(TOOLCHAIN)
	CROSS_DIR=$(TOOLCHAIN) CROSS=$(CROSS_COMPILE) CONF_DIR=/var/mca/d1 CFLAGS=-Os $(MAKE) MAKEFLAGS= -C oscam/trunk mca

.PHONY: install
install: oscam
	cp $(OSCAM) ../../../ROOTFS/
	rm -f `readlink -f ../../../ROOTFS/oscam`
	rm -f ../../../ROOTFS/oscam
	ln -s oscam-$(VERSION)$(SVN_REV)-$(CROSS_COMPILE)mca ../../../ROOTFS/oscam

.PHONY: clean
clean:
	$(MAKE) -C oscam/trunk clean

.PHONY: distclean
distclean: clean
	rm -rf oscam

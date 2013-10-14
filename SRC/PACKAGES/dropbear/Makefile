NAME := dropbear
VERSION := 0.52
URL := https://matt.ucc.asn.au/dropbear/releases/
ZLIB_VERSION:= 1.2.3

TOOLCHAIN := $(shell pwd)/../../../toolchain/Sourcery_G++_Lite-2011.03-41/bin/
ZLIB = ../zlib/zlib-$(ZLIB_VERSION)/libz.a
export PATH := $(PATH):$(TOOLCHAIN)
export CROSS_COMPILE = arm-none-linux-gnueabi-
export ARCH = arm
export INSTALL_MOD_PATH := $(PWD)/../../ROOTFS

all: dropbear

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

$(ZLIB):
	$(MAKE) -C ../zlib

.PHONY: config
config: $(NAME)-$(VERSION)/config.h

$(NAME)-$(VERSION)/config.h: $(NAME)-$(VERSION)/.patched $(ZLIB)
	cd $(NAME)-$(VERSION)/ && ./configure --host=arm-none-linux-gnueabi --with-zlib=../../zlib/zlib-$(ZLIB_VERSION) --prefix=/usr

.PHONY: dropbear
dropbear: $(NAME)-$(VERSION)/dropbearmulti

.PHONY: $(NAME)-$(VERSION)/dropbearmulti
$(NAME)-$(VERSION)/dropbearmulti: $(NAME)-$(VERSION)/config.h $(ZLIB) $(TOOLCHAIN)
	$(MAKE) -C $(NAME)-$(VERSION) STATIC=1 MULTI=1 PROGRAMS="dropbear dropbearkey scp dbclient dropbearconvert"

.PHONY: clean
clean:
	[ -d $(NAME)-$(VERSION) ] && $(MAKE) -C $(NAME)-$(VERSION) clean || [ 1 ]

.PHONY: distclean
distclean: clean
	rm -rf $(NAME)-$(VERSION)
	rm -rf $(NAME)-$(VERSION).tar.bz2

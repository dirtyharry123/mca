NAME := zlib
VERSION := 1.2.3
URL := http://downloads.sourceforge.net/project/libpng/zlib/$(VERSION)

TOOLCHAIN := $(shell pwd)/../../../toolchain/Sourcery_G++_Lite-2011.03-41/bin/
export PATH := $(PATH):$(TOOLCHAIN)
export CROSS_COMPILE = arm-none-linux-gnueabi-
export ARCH = arm
export INSTALL_MOD_PATH := $(PWD)/../../ROOTFS

all: $(NAME)

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
config: $(NAME)-$(VERSION)/zconf.h

$(NAME)-$(VERSION)/zconf.h: $(NAME)-$(VERSION)/.patched $(TOOLCHAIN)
	cd $(NAME)-$(VERSION)/ && CC=$(CROSS_COMPILE)gcc ./configure --prefix=/usr

.PHONY: $(NAME)
$(NAME): $(NAME)-$(VERSION)/libz.a

.PHONY: $(NAME)-$(VERSION)/libz.a
$(NAME)-$(VERSION)/libz.a: $(NAME)-$(VERSION)/zconf.h $(TOOLCHAIN)
	$(MAKE) -C $(NAME)-$(VERSION)

.PHONY: clean
clean:
	[ -d $(NAME)-$(VERSION) ] && $(MAKE) -C $(NAME)-$(VERSION) clean || [ 1 ]

.PHONY: distclean
distclean: clean
	rm -rf $(NAME)-$(VERSION)
	rm -rf $(NAME)-$(VERSION).tar.bz2

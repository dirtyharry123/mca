NAME := apex
VERSION := 1.6.8
URL := http://code.google.com/p/gnublin/source/browse/lpc3131/bootloader/apex/$(VERSION)
URL := http://gnublin.googlecode.com/git/lpc3131/bootloader/apex/$(VERSION)
URL := https://git.gitorious.org/apex/apex.git

TOOLCHAIN := $(PWD)/../../toolchain/Sourcery_G++_Lite-2011.03-41/bin/
export PATH := $(PATH):$(TOOLCHAIN)
export CROSS_COMPILE = arm-none-linux-gnueabi-
export ARCH = arm
# This is needed for the Sourcery G++ toolchain
export KCFLAGS="-mabi=aapcs"

all: apex.bin

.PHONY: download
download: $(NAME)-$(VERSION)/.extracted

$(NAME)-$(VERSION)/.extracted:
	git clone --branch $(VERSION) $(URL) $(NAME)-$(VERSION)
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
	$(MAKE) -C $(NAME)-$(VERSION) mca_config

.PHONY: apex.bin
apex.bin: $(NAME)-$(VERSION)/apex.bin

.PHONY: $(NAME)-$(VERSION)/apex.bin
$(NAME)-$(VERSION)/apex.bin: $(NAME)-$(VERSION)/.config $(TOOLCHAIN)
	$(MAKE) -C $(NAME)-$(VERSION)

.PHONY: clean
clean:
	[ -d $(NAME)-$(VERSION) ] && $(MAKE) -C $(NAME)-$(VERSION) clean || [ 1 ]

.PHONY: distclean
distclean: clean
	rm -rf $(NAME)-$(VERSION)

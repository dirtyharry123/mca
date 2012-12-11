# Makefile for simTD C2X wireshark plugin
# Copyright 2011 Joel Stein <joel.stein@de.opel.com>

NAME := wireshark
VERSION := 1.4.4
URL := http://www.wireshark.org/download/src/all-versions

all: build

zImage:
	

$(NAME)-$(VERSION).tar.bz2:
	wget $(URL)/$(NAME)-$(VERSION).tar.bz2

download: $(NAME)-$(VERSION).tar.bz2

.extracted: $(NAME)-$(VERSION).tar.bz2
	tar -xjf $(NAME)-$(VERSION).tar.bz2
	#cd $(NAME)-$(VERSION) && tar -xzf ../plugin.tar.gz
	cp -r plugins $(NAME)-$(VERSION)/
	@ touch .extracted

extract: .extracted

.patched: extract
	@ if [ ! -f .patched ] ; then \
		for i in $(shell ls patches/) ; do \
			patch -p1 -d $(NAME)-$(VERSION)/ <patches/$$i ; \
		done ;\
	fi
	@ touch .patched

patch: .patched

.configured: patch
	@ if [ ! -f .configured ] ; then \
		cd $(NAME)-$(VERSION) ; \
		./configure ; \
		cd .. ; \
	fi
	@ touch .configured

configure: .configured

.built: configure
	make -C $(NAME)-$(VERSION)/plugins/c2c
	@ touch .built

build: .built

install: build
	make -C $(NAME)-$(VERSION)/plugins/c2c install
	cp scripts/ccushark /usr/local/bin/ccushark
	cp scripts/livedump /usr/local/bin/livedump
	cp scripts/coverage/coverage /usr/local/bin/coverage
	cp scripts/coverage/livecover /usr/local/bin/livecover
	cp scripts/navit/livenmea /usr/local/bin/livenmea
	cp scripts/navit/nmeaplot /usr/local/bin/nmeaplot
	cp scripts/navit/all_ids /usr/local/lib/all_ids
	@ echo "You should probably symlink the plugin to your actual installation of wireshark."

uninstall:
	make -C $(NAME)-$(VERSION)/plugins/c2c uninstall
	rm -f /usr/local/bin/ccushark
	rm -f /usr/local/bin/livedump
	rm -f /usr/local/bin/coverage
	rm -f /usr/local/bin/livecover
	rm -f /usr/local/bin/livenmea
	rm -f /usr/local/bin/nmeaplot
	rm -f /usr/local/lib/all_ids

clean:
	rm -rf $(NAME)-$(VERSION)
	rm -rf .extracted
	rm -rf .patched
	rm -rf .configured
	rm -rf .built

distclean: clean
	rm -rf $(NAME)-$(VERSION).tar.bz2

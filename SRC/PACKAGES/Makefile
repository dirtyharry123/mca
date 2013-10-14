PACKAGES = $(shell ls -d */)
.PHONY: all clean distclean

all:
	for package in $(PACKAGES); do \
		$(MAKE) -C $$package all; \
	done

clean:
	for package in $(PACKAGES); do \
		$(MAKE) -C $$package clean; \
	done

distclean: clean
	for package in $(PACKAGES); do \
		$(MAKE) -C $$package distclean; \
	done

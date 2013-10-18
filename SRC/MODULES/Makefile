MODULES = $(shell ls -d */)
.PHONY: all clean distclean

all:
	for module in $(MODULES); do \
		cd $$module && $(MAKE) all; \
	done

clean:
	for module in $(MODULES); do \
		cd $$module && $(MAKE) clean; \
	done

distclean: clean
	for module in $(MODULES); do \
		cd $$module && $(MAKE) distclean; \
	done

MODULES = $(shell ls -d */)
.PHONY: all clean distclean

all:
	for module in $(MODULES); do \
		cd $$module && $(MAKE) all; \
		cd .. ; \
	done

clean:
	for module in $(MODULES); do \
		cd $$module && $(MAKE) clean; \
		cd .. ; \
	done

distclean: clean
	for module in $(MODULES); do \
		cd $$module && $(MAKE) distclean; \
		cd .. ; \
	done

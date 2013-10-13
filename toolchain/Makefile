NAME := Sourcery_G++_Lite
VERSION := 2011.03-41

all: extract

.PHONY: extract
extract: $(NAME)-$(VERSION)

$(NAME)-$(VERSION)/: $(NAME)-$(VERSION).tar.xz
	tar -xJf $(NAME)-$(VERSION).tar.xz

.PHONY: clean
clean:
	rm -rf $(NAME)-$(VERSION)

.PHONY: clean
distclean: clean

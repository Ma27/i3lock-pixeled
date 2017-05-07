prefix := $(PREFIX)
ifndef PREFIX
	prefix := /usr/local/bin
endif

install:
	mkdir -p $(PREFIX)
	cp i3lock-pixeled $(PREFIX)/i3lock-pixeled

uninstall:
	rm -f $(PREFIX)/i3lock-pixeled

.PHONY: install uninstall

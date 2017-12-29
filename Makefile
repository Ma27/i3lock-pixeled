PREFIX ?= /usr/local/bin

install:
	mkdir -p $(PREFIX)
	cp i3lock-pixeled $(PREFIX)/i3lock-pixeled

uninstall:
	rm -f $(PREFIX)/i3lock-pixeled

.PHONY: install uninstall

all:

install:
	mkdir -p $(DESTDIR)/usr/share
	cp --no-preserve=mode,ownership -r \
		color-schemes \
		plasma

uninstall:
	-rm -r  $(DESTDIR)/usr/share/color-schemes/Douro.colors
	-rm -rf $(DESTDIR)/usr/share/plasma/desktoptheme/Douro
	-rm -rf $(DESTDIR)/usr/share/plasma/look-and-feel/org.douroproject.kde

.PHONY: all install uninstall

# Makefile for ffx264

PREFIX=/usr/local
DOCDIR=$(PREFIX)/share/doc
MANDIR=$(PREFIX)/share/man/man1

install:
	mkdir -p -m 755 $(PREFIX)/bin $(DOCDIR)/ffx264 $(MANDIR)
	
	cp -f ffx264 $(PREFIX)/bin
	chmod 755 $(PREFIX)/bin/ffx264
	cp -f AUTHORS LICENSE README ChangeLog *.txt $(DOCDIR)/ffx264
	chmod 644 $(DOCDIR)/ffx264/*
	cp -f ffx264.1 $(MANDIR)
	gzip -9 -f $(MANDIR)/ffx264.1

uninstall:
	rm -f $(PREFIX)/bin/ffx264
	rm -f $(MANDIR)/ffx264.1.gz
	rm -rf $(DOCDIR)/ffx264

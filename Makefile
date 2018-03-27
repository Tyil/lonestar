DESTDIR ?= /usr

install: bin lib share etc

bin:
	install -D --mode=755 -p bin/lonestar $(DESTDIR)/bin/lonestar

lib:
	mkdir -p $(DESTDIR)/lib
	cp -r lib/lonestar $(DESTDIR)/lib/.
	chmod 755 $(DESTDIR)/lib/lonestar/actions/*

share:
	mkdir -p $(DESTDIR)/share
	cp -r share/lonestar $(DESTDIR)/share/.

etc:
	mkdir -p $(DESTDIR)/etc
	cp -r etc/lonestar $(DESTDIR)/etc/.

.PHONY: bin lib share etc

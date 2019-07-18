DESTDIR ?= /usr
ETCDIR ?= /etc

install: bin lib share etc

bin:
	mkdir -p "$(DESTDIR)/bin"
	cp bin/lonestar "$(DESTDIR)/bin/lonestar"
	chmod 755 "$(DESTDIR)/bin/lonestar"
	chown root:root "$(DESTDIR)/bin/lonestar"

lib:
	mkdir -p -- "$(DESTDIR)/lib"
	cp -r -- lib/lonestar "$(DESTDIR)/lib/."
	chmod 755 -- "$(DESTDIR)/lib/lonestar/actions/"*

share:
	mkdir -p -- "$(DESTDIR)/share"
	cp -r -- share/lonestar "$(DESTDIR)/share/."

etc:
	mkdir -p -- "$(ETCDIR)"
	cp -r -- etc/lonestar "$(ETCDIR)/."

.PHONY: bin lib share etc

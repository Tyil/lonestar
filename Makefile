DESTDIR ?= /usr

install:
	mkdir -p $(DESTDIR)/bin
	install bin/* $(DESTDIR)/bin/.
	mkdir -p $(DESTDIR)/lib
	install lib/lonestar/* $(DESTDIR)/lib/lonestar/.
	mkdir -p $(DESTDIR)/share/lonestar/help
	install share/lonestar/help/* $(DESTDIR)/share/lonestar/help/.
	mkdir -p $(DESTDIR)/etc/lonestar
	install etc/lonestar/* $(DESTDIR)/etc/lonestar/.

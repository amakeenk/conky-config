PREFIX ?= /usr
BINDIR ?= $(PREFIX)/bin
CONKYDIR ?= /etc/conky

install:
	mkdir -p $(CONKYDIR)/scripts
	install -m0755 run-conky.sh $(BINDIR)/run-conky
	install -m0644 conky.conf $(CONKYDIR)/conky.conf

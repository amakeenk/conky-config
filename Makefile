PREFIX ?= /usr
BINDIR ?= $(PREFIX)/bin
CONKYDIR ?= /etc/conky

install:
	mkdir -p $(CONKYDIR)/scripts
	install -m0755 run-conky.sh $(BINDIR)/run-conky
	install -m0644 conky.conf $(CONKYDIR)/conky.conf
	install -m0755 scripts/check_update.sh $(CONKYDIR)/scripts/check_update.sh
	install -m0755 scripts/check_update_yandex_browser.sh $(CONKYDIR)/scripts/check_update_yandex_browser.sh
	install -m0755 scripts/check_update_yandex_disk.sh $(CONKYDIR)/scripts/check_update_yandex_disk.sh
	install -m0755 scripts/yandex-disk-status.sh $(CONKYDIR)/scripts/yandex-disk-status.sh

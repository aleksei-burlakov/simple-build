DESTDIR ?=
PREFIX ?= /usr/local

helloworld:
	gcc main.c -o helloalex

install: helloworld
	install -m 0755 -d $(DESTDIR)$(PREFIX)/bin
	install -m 0755 helloalex $(DESTDIR)$(PREFIX)/bin

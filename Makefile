DESTDIR ?=
PREFIX ?= /usr/local

helloworld:
	g++ main.cpp -o helloalexcpp -lpqxx

install: helloworld
	install -m 0755 -d $(DESTDIR)$(PREFIX)/bin
	install -m 0755 helloalexcpp $(DESTDIR)$(PREFIX)/bin

PREFIX    = /usr/local
MANPREFIX = ${PREFIX}/share/man

all:
	@echo usage: make install, uninstall

install:
	mkdir -p		${DESTDIR}${PREFIX}/bin
	install -m755	md2ms	${DESTDIR}${PREFIX}/bin/md2ms
	mkdir -p		${DESTDIR}${MANPREFIX}/man1
	install -m644	md2ms.1	${DESTDIR}${MANPREFIX}/man1/md2ms.1

uninstall:
	rm -f	${DESTDIR}${PREFIX}/bin/md2ms
	rm -f	${DESTDIR}${MANPREFIX}/man1/md2ms.1

.PHONY: all install uninstall

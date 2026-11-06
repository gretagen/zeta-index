#!/bin/sh
# figlet 2.2.5: plain Makefile, DESTDIR-aware upstream. Fonts go to
# $(prefix)/share/figlet (also baked into the binary as the default dir);
# MANDIR moved to the share/man convention (upstream default is /man).
set -e

make prefix=/usr MANDIR=/usr/share/man -j"$(nproc 2>/dev/null || echo 4)"
make install prefix=/usr MANDIR=/usr/share/man DESTDIR="$DESTDIR"

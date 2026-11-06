#!/bin/sh
# duktape 2.7.0: shared JS engine (soname 207) + pkg-config file; needed
# by libproxy's PAC runner backend.
set -e

rm -f duktape.pc
make -f Makefile.sharedlibrary CC=gcc INSTALL_PREFIX=/usr
make -f Makefile.sharedlibrary CC=gcc install INSTALL_PREFIX=/usr DESTDIR="$DESTDIR"
# the makefile also ships the debug (dukaped) flavor — not wanted
rm -f "$DESTDIR"/usr/lib/libduktaped.so*

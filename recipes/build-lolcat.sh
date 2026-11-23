#!/bin/sh
# lolcat 1.5: tiny C Makefile — build both binaries and install them
# into /usr/bin (the Makefile treats DESTDIR as the target directory
# itself, like upstream's PKGBUILD does). CC forced to gcc (no cc
# symlink on this host); touch the pre-generated header so make never
# reaches the python regen rule.
set -e

touch xterm256lut.h
make CC=gcc
mkdir -p "$DESTDIR/usr/bin"
make CC=gcc DESTDIR="$DESTDIR/usr/bin" install

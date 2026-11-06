#!/bin/sh
# cbonsai 1.4.2: plain Makefile, DESTDIR-aware install (bin + man6 +
# bash completion). CC passed explicitly - the host lacks the cc symlink
# the Makefile's "CC ?= cc" would pick.
set -e

make CC=gcc PREFIX=/usr -j"$(nproc 2>/dev/null || echo 4)"
make install CC=gcc PREFIX=/usr DESTDIR="$DESTDIR"

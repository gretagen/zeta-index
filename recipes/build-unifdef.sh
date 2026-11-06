#!/bin/sh
# unifdef 2.12: #ifdef pruner required by webkit's cmake (FindUnifdef).
# Tiny standalone tool; no man page needed for a build dependency.
set -e

# gcc 16 defaults to C23, where unifdef.c's `constexpr` identifier clashes
make CC=gcc CFLAGS="-O2 -std=gnu11" unifdef
mkdir -p "$DESTDIR/usr/bin"
install -m 755 unifdef "$DESTDIR/usr/bin/unifdef"

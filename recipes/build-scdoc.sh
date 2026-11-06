#!/bin/sh
# scdoc 1.11.1: plain Makefile, DESTDIR-aware install.
set -e

make CC=gcc PREFIX=/usr -j"$(nproc 2>/dev/null || echo 4)"
make install CC=gcc PREFIX=/usr DESTDIR="$DESTDIR"

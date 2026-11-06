#!/bin/sh
# cpufetch 1.07: fancy CPU architecture info tool. Plain make; CC pinned
# (no cc symlink on this host).
set -e

make -j"$(nproc)" CC=gcc CXX=g++ PREFIX=/usr
make install CC=gcc PREFIX=/usr DESTDIR="$DESTDIR"

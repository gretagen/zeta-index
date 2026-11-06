#!/bin/sh
# libsass 3.6.6: static library + headers (sassc links it statically, so
# no shared object and no runtime dep beyond the C++ runtime).
set -e

make -j"$(nproc)" PREFIX=/usr CC=gcc CXX=g++
make install PREFIX=/usr CC=gcc CXX=g++ DESTDIR="$DESTDIR"
# install-static does not chain install-headers (only install-shared does)
make install-headers PREFIX=/usr CC=gcc CXX=g++ DESTDIR="$DESTDIR"

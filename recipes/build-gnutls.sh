#!/bin/sh
# gnutls 3.8.13 official release tarball (configure pre-generated - the
# git tag archive would need gtkdocize/gnulib bootstrapping).
# Backend config mirrors the original package: nettle (default) plus
# --with-leancrypto; libidn2/p11-kit picked up automatically from their
# freshly repacked dev files.
set -e

./configure --prefix=/usr --libdir=/usr/lib --disable-static --with-leancrypto
make -j"$(nproc 2>/dev/null || echo 4)"
make install DESTDIR="$DESTDIR"

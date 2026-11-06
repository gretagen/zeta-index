#!/bin/sh
# nspr 4.40: the release tarball nests everything under nspr/ (the
# top-level directory holds no configure), so step in explicitly.
set -e

cd nspr
./configure --prefix=/usr --sysconfdir=/etc --disable-static --enable-ipv6 --enable-64bit
make -j"$(nproc)"
make install DESTDIR="$DESTDIR"

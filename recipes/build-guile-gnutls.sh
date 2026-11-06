#!/bin/sh
# guile-gnutls 5.0.1 from the official src tarball: git-tree layout
# (configure.ac only) with gnulib already vendored in gl/ - bootstrap
# just regenerates the autotools files.
set -e

export ACLOCAL_PATH=/usr/share/gettext/m4${ACLOCAL_PATH:+:$ACLOCAL_PATH}
touch NEWS AUTHORS ChangeLog README
./bootstrap
./configure --prefix=/usr --libdir=/usr/lib
make -j"$(nproc 2>/dev/null || echo 4)"
make install DESTDIR="$DESTDIR"

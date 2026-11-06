#!/bin/sh
# pcaudiolib 1.3: git tag tarball ships no configure - bootstrap with
# autoreconf (works since the autoconf/libtool/pkgconf repairs). The git
# tree lacks the automake boilerplate files (NEWS etc.), create empties.
set -e

touch NEWS AUTHORS ChangeLog README
autoreconf -fi
./configure --prefix=/usr --disable-static
make -j"$(nproc 2>/dev/null || echo 4)"
make install DESTDIR="$DESTDIR"

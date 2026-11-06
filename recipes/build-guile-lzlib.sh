#!/bin/sh
# guile-lzlib: autoreconf path + guix's gcc-14 (and newer) compile fix
# carried from gnu/packages/patches.
set -e

DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
export ACLOCAL_PATH=/usr/share/gettext/m4${ACLOCAL_PATH:+:$ACLOCAL_PATH}
touch NEWS AUTHORS ChangeLog README
patch -p1 < "$DIR/guile-lzlib-gcc-14.patch"
autoreconf -fi
./configure --prefix=/usr --libdir=/usr/lib
make -j"$(nproc 2>/dev/null || echo 4)"
make install DESTDIR="$DESTDIR"

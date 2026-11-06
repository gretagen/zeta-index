#!/bin/sh
# guile-ssh: plain autotools tree (no configure shipped, no gnulib).
set -e
export ACLOCAL_PATH=/usr/share/gettext/m4${ACLOCAL_PATH:+:$ACLOCAL_PATH}
touch NEWS AUTHORS ChangeLog README
autoreconf -fi
./configure --prefix=/usr --libdir=/usr/lib
make -j"$(nproc 2>/dev/null || echo 4)"
make install DESTDIR="$DESTDIR"

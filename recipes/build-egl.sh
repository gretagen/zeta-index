#!/bin/sh
# egl repack from libglvnd: autotools build, full install to stage; the
# recipe's files whitelist trims the payload to the intended set.
set -e

./autogen.sh
# GLX excluded: not part of this package's payload, and its link pulls the
# host's broken libX11.la -> libXau.la chain.
./configure --prefix=/usr --libdir=/usr/lib --disable-static --disable-glx
jobs=$(nproc 2>/dev/null || echo 4)
make -j"$jobs"
make install DESTDIR="$DESTDIR"

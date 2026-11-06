#!/bin/sh
# Tag tarball has no ./configure: bootstrap via autoreconf (gettext/autopoint
# handle the po/ machinery), then the normal autotools flow.
set -e

autoreconf -fi
# --without-icu: ICU is optional upstream (locale/unicode niceties only);
# the index's icu package ships runtime libs without headers/pkg-config.
# --disable-static: the static archive is ~78 MB of pure bloat.
./configure --prefix=/usr --without-icu --disable-static
jobs=$(nproc 2>/dev/null || echo 4)
make -j"$jobs"
make install DESTDIR="$DESTDIR"
rm -f "$DESTDIR"/usr/lib/*.la

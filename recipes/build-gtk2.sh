#!/bin/sh
# GTK+ 2.24.33: drop the tests subdirs (their inline-pixbuf generation
# needs gdk-pixbuf-csource PNG decoding, which is broken host-side — and
# tests are irrelevant to the package); gcc16 defaults made old-style
# pointer code errors, hence the CFLAGS overrides.
set -e

# demos/tests/perf need gdk-pixbuf-csource PNG decoding (broken host-side)
# and are irrelevant to the shipped libraries/engines
sed -i "s/^SRC_SUBDIRS = .*/SRC_SUBDIRS = gdk gtk modules/" Makefile.in

export CFLAGS="-O2 -Wno-error=incompatible-pointer-types -Wno-error=implicit-function-declaration -Wno-error=int-conversion"
./configure --prefix=/usr --disable-static --disable-gtk-doc
make -j"$(nproc)"
make DESTDIR="$DESTDIR" install

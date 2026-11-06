#!/bin/sh
# bzip2 has no DESTDIR support in its Makefile, and its default `install`
# target also drops man pages and the static lib under odd paths. Stage the
# exact payload by hand: shared library (parity with1.0.8) + CLI tools.
set -e

jobs=$(nproc 2>/dev/null || echo 4)
make -j"$jobs"
# The shared-lib makefile has its own -fPIC compile rules, but the plain
# build's non-PIC .o files share the same names and would be reused as-is.
rm -f ./*.o
make -f Makefile-libbz2_so

mkdir -p "$DESTDIR/usr/bin" "$DESTDIR/usr/lib"
cp -f bzip2 bzip2recover "$DESTDIR/usr/bin/"
# upstream's install target creates these as copies of bzip2; relative
# symlinks keep the same behavior at a fraction of the size
ln -sf bzip2 "$DESTDIR/usr/bin/bunzip2"
ln -sf bzip2 "$DESTDIR/usr/bin/bzcat"
cp -f libbz2.so.1.0.8 "$DESTDIR/usr/lib/"
ln -sf libbz2.so.1.0.8 "$DESTDIR/usr/lib/libbz2.so.1.0"
ln -sf libbz2.so.1.0 "$DESTDIR/usr/lib/libbz2.so.1"
ln -sf libbz2.so.1 "$DESTDIR/usr/lib/libbz2.so"

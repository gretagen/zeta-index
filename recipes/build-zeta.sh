#!/bin/sh
# zeta 1.0.64: launcher + entry point + library tree, byte-for-byte the
# layout of the previous package (the launcher finds ../lib/zeta/zeta.lua
# relative to itself).
set -e

mkdir -p "$DESTDIR/usr/bin" "$DESTDIR/usr/lib/zeta"
install -m 755 bin/zeta "$DESTDIR/usr/bin/zeta"
cp -a zeta.lua "$DESTDIR/usr/lib/zeta/zeta.lua"
cp -a lib "$DESTDIR/usr/lib/zeta/lib"

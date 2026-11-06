#!/bin/sh
# nacelle 3.1.2: launcher + lua tree, layout identical to the previous
# package (README/LICENSE are not installed).
set -e

mkdir -p "$DESTDIR/usr/bin" "$DESTDIR/usr/lib/nacelle"
install -m 755 nacelle "$DESTDIR/usr/bin/nacelle"
cp -a sync.lua registry.lua plugins.lua config.lua "$DESTDIR/usr/lib/nacelle/"
cp -a generators house-handlers "$DESTDIR/usr/lib/nacelle/"
# legacy file the published package has always excluded (its test asserts
# the absence of house-handlers/house-sync)
rm -f "$DESTDIR/usr/lib/nacelle/house-handlers/house-sync"

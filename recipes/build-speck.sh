#!/bin/sh
# speck 0.1.0: upstream's entire build — xxd -r -p reassembles the
# hex image into the freestanding ELF (xxd ships with vim, provided
# on the build host; no compiler involved). Upstream has no install
# target, so the binary is placed manually. XXD is passed explicitly:
# vim's xxd sits in /usr/local/bin, which isn't on the build PATH.
set -e

XXD=$(command -v xxd || printf /usr/local/bin/xxd)
make XXD="$XXD"
install -Dm755 speck "$DESTDIR/usr/bin/speck"

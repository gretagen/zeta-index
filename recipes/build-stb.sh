#!/bin/sh
# Header-only install into usr/include/stb/. The resize2 header moved to
# deprecated/ upstream; noctalia's configure check needs it at
# stb/stb_image_resize2.h, so copy it explicitly.
set -e

mkdir -p "$DESTDIR/usr/include/stb"
cp -f ./*.h "$DESTDIR/usr/include/stb/"
cp -f deprecated/stb_image_resize2.h "$DESTDIR/usr/include/stb/"

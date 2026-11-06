#!/bin/sh
# Headers-only package: the public API lives in src/systemd/*.h and is
# installed to include/systemd/ by systemd's own build.
set -e

mkdir -p "$DESTDIR/usr/include/systemd"
cp -f src/systemd/*.h "$DESTDIR/usr/include/systemd/"

#!/bin/sh
set -eu
install -Dm755 btm "$DESTDIR/usr/bin/btm"
mkdir -p "$DESTDIR/usr/share/completions"
cp -a completion/. "$DESTDIR/usr/share/completions/"

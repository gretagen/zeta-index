#!/bin/sh
set -eu
install -Dm755 sd "$DESTDIR/usr/bin/sd"
install -Dm644 sd.1 "$DESTDIR/usr/share/man/man1/sd.1"
mkdir -p "$DESTDIR/usr/share/completions"
cp -a completions/. "$DESTDIR/usr/share/completions/"
install -Dm644 LICENSE "$DESTDIR/usr/share/licenses/sd/LICENSE"
install -Dm644 README.md "$DESTDIR/usr/share/doc/sd/README.md"

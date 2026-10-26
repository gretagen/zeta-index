#!/bin/sh
set -eu
install -Dm755 just "$DESTDIR/usr/bin/just"
install -Dm644 just.1 "$DESTDIR/usr/share/man/man1/just.1"
mkdir -p "$DESTDIR/usr/share/completions"
cp -a completions/. "$DESTDIR/usr/share/completions/"
install -Dm644 LICENSE "$DESTDIR/usr/share/licenses/just/LICENSE"

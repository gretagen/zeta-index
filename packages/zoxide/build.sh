#!/bin/sh
set -eu
install -Dm755 zoxide "$DESTDIR/usr/bin/zoxide"
mkdir -p "$DESTDIR/usr/share/man/man1"
cp -a man/man1/. "$DESTDIR/usr/share/man/man1/"
mkdir -p "$DESTDIR/usr/share/completions"
cp -a completions/. "$DESTDIR/usr/share/completions/"
install -Dm644 LICENSE "$DESTDIR/usr/share/licenses/zoxide/LICENSE"
install -Dm644 README.md "$DESTDIR/usr/share/doc/zoxide/README.md"

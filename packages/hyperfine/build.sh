#!/bin/sh
set -eu
install -Dm755 hyperfine "$DESTDIR/usr/bin/hyperfine"
install -Dm644 hyperfine.1 "$DESTDIR/usr/share/man/man1/hyperfine.1"
mkdir -p "$DESTDIR/usr/share/completions"
cp -a autocomplete/. "$DESTDIR/usr/share/completions/"
install -Dm644 LICENSE-APACHE "$DESTDIR/usr/share/licenses/hyperfine/LICENSE-APACHE"
install -Dm644 LICENSE-MIT "$DESTDIR/usr/share/licenses/hyperfine/LICENSE-MIT"
install -Dm644 README.md "$DESTDIR/usr/share/doc/hyperfine/README.md"

#!/bin/sh
set -eu
install -Dm755 delta "$DESTDIR/usr/bin/delta"
install -Dm644 LICENSE "$DESTDIR/usr/share/licenses/delta/LICENSE"
install -Dm644 README.md "$DESTDIR/usr/share/doc/delta/README.md"

#!/bin/sh
set -eu
install -Dm755 dust "$DESTDIR/usr/bin/dust"
install -Dm644 LICENSE "$DESTDIR/usr/share/licenses/dust/LICENSE"
install -Dm644 README.md "$DESTDIR/usr/share/doc/dust/README.md"

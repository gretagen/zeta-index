#!/bin/sh
# chronos 1.9.8: the script alone in usr/bin, same layout as before.
set -e

mkdir -p "$DESTDIR/usr/bin"
install -m 755 chronos "$DESTDIR/usr/bin/chronos"

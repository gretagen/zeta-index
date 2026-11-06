#!/bin/sh
# chronos 1.9.6: the script alone in usr/bin, exactly the 1.9.5 layout.
set -e

mkdir -p "$DESTDIR/usr/bin"
install -m 755 chronos "$DESTDIR/usr/bin/chronos"

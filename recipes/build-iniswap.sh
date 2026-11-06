#!/bin/sh
# iniswap 1.10.2: the swap tool plus its per-init handlers, now shipped
# under the package's own /usr/lib/iniswap — no nacelle involvement.
# /sbin copies mirror the published package (regular files, not symlinks).
set -e

U="$DESTDIR/usr"
mkdir -p "$U/bin" "$U/lib/iniswap" "$DESTDIR/sbin"
install -m 755 iniswap reboot shutdown "$U/bin/"
install -m 755 reboot shutdown "$DESTDIR/sbin/"
install -m 755 systemd.sh openrc.sh runit.sh dinit.sh shepherd.sh "$U/lib/iniswap/"

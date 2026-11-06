#!/bin/sh
# openssl 3.6.3 repack: shared libs (original payload) + the dev files the
# package was missing (headers, pkg-config, CLI). Static archives dropped to
# keep the payload focused, matching the previous lib-only package.
set -e

./config --prefix=/usr --openssldir=/etc/ssl --libdir=lib shared
jobs=$(nproc 2>/dev/null || echo 4)
make -j"$jobs"
make install_sw DESTDIR="$DESTDIR"
rm -f "$DESTDIR"/usr/lib/*.a

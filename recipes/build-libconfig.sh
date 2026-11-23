#!/bin/sh
# libconfig 1.8.3: git tag archive has no generated configure — run
# autoreconf, then a standard static-disabled install. DESTDIR is
# already exported by zeta-makepkg (stage), which is exactly what the
# autotools install step should honor.
set -e

autoreconf -fi
./configure --prefix=/usr --disable-static
make -j"$(nproc 2>/dev/null || echo 4)"
make install

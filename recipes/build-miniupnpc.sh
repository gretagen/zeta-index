#!/bin/sh
# miniupnpc 2.3.5: the CMake project lives in the repo's miniupnpc/
# subdirectory (the parent is the whole miniupnp tree), so cd there
# first. DESTDIR is exported by zeta-makepkg.
set -e

cd miniupnpc
cmake -B build -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_INSTALL_LIBDIR=lib
cmake --build build -j"$(nproc 2>/dev/null || echo 4)"
DESTDIR="$DESTDIR" cmake --install build

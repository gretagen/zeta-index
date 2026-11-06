#!/bin/sh
# espeak-ng 1.52.0 via CMake (upstream's recommended build from this
# release on). pcaudio for sound output, compat espeak symlink on.
set -e

cmake -B build -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_INSTALL_LIBDIR=lib \
  -DUSE_LIBPCAUDIO=ON -DESPEAK_COMPAT=ON
cmake --build build -j"$(nproc 2>/dev/null || echo 4)"
cmake --install build

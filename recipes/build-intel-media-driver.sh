#!/bin/sh
# intel-media-driver 26.2.4: flags verbatim from the original
# source-at-provide build function (ENABLE_NONFREE_KERNELS +
# ENABLE_KERNELS compile the actual firmware kernels) + LIBDIR=lib so
# the driver lands in /usr/lib/dri, + CMAKE_POLICY_VERSION_MINIMUM
# for cmrtlib's pre-3.5 cmake_minimum_required (CMake 4.x rejects it).
# The sed removes upstream's BLANKET per-target "-Werror" property
# (media_top_cmake.cmake): modern GCC's default-on warnings
# (-Wdangling-pointer in gen8 code, -Warray-bounds false positives in
# hevc encode) became hard errors on code unchanged for a decade.
# Their targeted -Werror=address/format-security/return-type toggles
# stay — only the blanket goes.
set -e

sed -i '/COMPILE_FLAGS "-Werror"/d' media_driver/media_top_cmake.cmake

cmake -B build -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_INSTALL_LIBDIR=lib \
  -DENABLE_NONFREE_KERNELS=ON -DENABLE_KERNELS=ON \
  -DCMAKE_POLICY_VERSION_MINIMUM=3.5
cmake --build build -j"$(nproc 2>/dev/null || echo 4)"
DESTDIR="$DESTDIR" cmake --install build

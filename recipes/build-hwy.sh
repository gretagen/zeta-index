#!/bin/sh
# libhwy repack: shared lib (original payload) + headers, plus a
# pkg-config file (write only if upstream's CMake did not install one).
set -e

jobs=$(nproc 2>/dev/null || echo 4)
cmake -B build -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_INSTALL_LIBDIR=lib \
  -DBUILD_SHARED_LIBS=ON \
  -DHWY_ENABLE_TESTS=OFF -DHWY_ENABLE_EXAMPLES=OFF \
  -DHWY_ENABLE_CONTRIB=OFF -DHWY_ENABLE_MAN=OFF
cmake --build build -j"$jobs"
cmake --install build

mkdir -p "$DESTDIR/usr/lib/pkgconfig"
if [ ! -f "$DESTDIR/usr/lib/pkgconfig/libhwy.pc" ]; then
  cat > "$DESTDIR/usr/lib/pkgconfig/libhwy.pc" <<'EOF'
prefix=/usr
libdir=${prefix}/lib
includedir=${prefix}/include

Name: libhwy
Description: Google Highway SIMD library
Version: 1.2.0
Libs: -L${libdir} -lhwy
Cflags: -I${includedir}
EOF
fi

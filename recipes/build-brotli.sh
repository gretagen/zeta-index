#!/bin/sh
# brotli repack: shared libs (original payload) + headers + brotli CLI,
# then the three pkg-config files upstream does not install.
set -e

jobs=$(nproc 2>/dev/null || echo 4)
cmake -B build -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_INSTALL_LIBDIR=lib \
  -DBUILD_SHARED_LIBS=ON
cmake --build build -j"$jobs"
cmake --install build
rm -f "$DESTDIR"/usr/lib/*.a

mkdir -p "$DESTDIR/usr/lib/pkgconfig"
cat > "$DESTDIR/usr/lib/pkgconfig/libbrotlicommon.pc" <<'EOF'
prefix=/usr
libdir=${prefix}/lib
includedir=${prefix}/include

Name: libbrotlicommon
Description: Brotli common dictionary library
Version: 1.2.0
Libs: -L${libdir} -lbrotlicommon
Cflags: -I${includedir}
EOF
cat > "$DESTDIR/usr/lib/pkgconfig/libbrotlidec.pc" <<'EOF'
prefix=/usr
libdir=${prefix}/lib
includedir=${prefix}/include

Name: libbrotlidec
Description: Brotli decoder library
Version: 1.2.0
Requires: libbrotlicommon
Libs: -L${libdir} -lbrotlidec
Cflags: -I${includedir}
EOF
cat > "$DESTDIR/usr/lib/pkgconfig/libbrotlienc.pc" <<'EOF'
prefix=/usr
libdir=${prefix}/lib
includedir=${prefix}/include

Name: libbrotlienc
Description: Brotli encoder library
Version: 1.2.0
Requires: libbrotlicommon
Libs: -L${libdir} -lbrotlienc
Cflags: -I${includedir}
EOF

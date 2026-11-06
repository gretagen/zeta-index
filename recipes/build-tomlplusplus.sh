#!/bin/sh
# Repack tomlplusplus3.4.0 with the payload the index shipped (headers +
# compiled shared lib) plus the pkg-config file it was missing.
# toml++'s CMake only defines an INTERFACE target, so compile the shared
# library directly - a single TU including toml++ exports the same weak
# inline symbols as the original package's libtomlplusplus.so.3.
set -e

mkdir -p buildlib
printf '#include <toml++/toml.h>\n' > buildlib/tomlplusplus.cpp
g++ -std=c++17 -O2 -fPIC -shared -Iinclude \
  -Wl,-soname,libtomlplusplus.so.3 \
  -o buildlib/libtomlplusplus.so.3 buildlib/tomlplusplus.cpp

mkdir -p "$DESTDIR/usr/include" "$DESTDIR/usr/lib/pkgconfig"
cp -r include/toml++ "$DESTDIR/usr/include/"
cp buildlib/libtomlplusplus.so.3 "$DESTDIR/usr/lib/"
ln -sf libtomlplusplus.so.3 "$DESTDIR/usr/lib/libtomlplusplus.so"

cat > "$DESTDIR/usr/lib/pkgconfig/tomlplusplus.pc" <<'EOF'
prefix=/usr
libdir=${prefix}/lib
includedir=${prefix}/include

Name: toml++
Description: TOML config file parser for C++17
Version: 3.4.0
Libs: -L${libdir} -ltomlplusplus
Cflags: -I${includedir}
EOF

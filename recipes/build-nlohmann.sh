#!/bin/sh
# Header-only install + minimal nlohmann_json.pc so pkg-config/meson find it.
set -e

mkdir -p "$DESTDIR/usr/include/nlohmann" "$DESTDIR/usr/lib/pkgconfig"
# whole tree: json.hpp pulls nlohmann/detail/** at compile time
cp -r include/nlohmann/. "$DESTDIR/usr/include/nlohmann/"

cat > "$DESTDIR/usr/lib/pkgconfig/nlohmann_json.pc" <<'EOF'
prefix=/usr
includedir=${prefix}/include

Name: nlohmann JSON
Description: JSON for Modern C++ (single-header library)
Version: 3.12.0
Cflags: -I${includedir}
EOF

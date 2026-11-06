#!/bin/sh
# SpiderMonkey 140.17.0 from the Firefox ESR source (BLFS flow):
# python-3.14 compat patch (pinned digest), js-only mozconfig with system
# icu/zlib and the intl API gjs requires, mach build, manual staged install
# (mach install writes the real /usr, which packaging must not do).
set -e

V=140.17.0

# Python 3.14 fixes (BLFS); fetched with a pinned digest so the build stays
# deterministic even though the recipe carries a single source.
curl -sfL -o /tmp/spidermonkey-py314.patch \
  "https://www.linuxfromscratch.org/patches/blfs/svn/spidermonkey-140.17.0-python_3.14_fixes-1.patch"
echo "24183878004982be0d7d87af2daa49a36d327a279b0abcf222c0c99e805e2ed7  /tmp/spidermonkey-py314.patch" | sha256sum -c -
# Tolerate a re-run over an already-patched tree (fresh builds apply clean).
patch -Np1 -i /tmp/spidermonkey-py314.patch || echo "(patch already applied)"

cat > mozconfig <<EOF
ac_add_options --prefix=/usr
ac_add_options --enable-project=js
ac_add_options --disable-debug-symbols
ac_add_options --disable-jemalloc
ac_add_options --enable-readline
ac_add_options --enable-rust-simd
ac_add_options --with-intl-api
ac_add_options --with-system-icu
ac_add_options --with-system-zlib
mk_add_options MOZBUILD_STATE_PATH=$PWD/mozbuild
EOF

export MACH_BUILD_PYTHON_NATIVE_PACKAGE_SOURCE=none
export MOZBUILD_STATE_PATH="$PWD/mozbuild"
export CC=gcc
export CXX=g++
./mach build

DIST=$(find . -maxdepth 3 -type d -name dist | head -1)
test -n "$DIST"

mkdir -p "$DESTDIR/usr/bin" "$DESTDIR/usr/lib/pkgconfig" "$DESTDIR/usr/include/mozjs-140"
cp -a "$DIST/bin/js" "$DESTDIR/usr/bin/js140"
cp -a "$DIST/bin/libmozjs-140.so" "$DESTDIR/usr/lib/"
cp -rL "$DIST/include/." "$DESTDIR/usr/include/mozjs-140/"

# js140-config: mach install would generate it; a flags shim serves the
# same purpose (gjs builds against mozjs-140.pc instead).
cat > "$DESTDIR/usr/bin/js140-config" <<'EOF'
#!/bin/sh
# flags helper for embedding mozjs-140
case "${1:-}" in
  --cflags) echo "-I/usr/include/mozjs-140" ;;
  --libs)   echo "-L/usr/lib -lmozjs-140" ;;
  *) echo "usage: js140-config [--cflags|--libs]" >&2; exit 1 ;;
esac
EOF
chmod 755 "$DESTDIR/usr/bin/js140-config"

# pkg-config for gjs (this layout ships no pre-built .pc)
cat > "$DESTDIR/usr/lib/pkgconfig/mozjs-140.pc" <<EOF
prefix=/usr
libdir=\${prefix}/lib
includedir=\${prefix}/include/mozjs-140

Name: mozjs-140
Description: SpiderMonkey JavaScript Engine
Version: 140.17.0
Libs: -L\${libdir} -lmozjs-140
Cflags: -I\${includedir}
EOF

# BLFS fix: js-config.h needs XP_UNIX for the shell/embedding paths
sed -i '$i#define XP_UNIX' "$DESTDIR/usr/include/mozjs-140/js-config.h"

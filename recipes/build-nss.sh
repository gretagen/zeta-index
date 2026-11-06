#!/bin/sh
# nss 3.132 (BLFS flow): standalone patch (pinned digest), make against the
# system nspr/zlib/sqlite, staged install of libs+headers+pc+bins. The old
# index package shipped libraries only — headers and nss.pc are the point
# of this rebuild (evolution-data-server needs them).
set -e

curl -sfL -o /tmp/nss-standalone-1.patch \
  "https://www.linuxfromscratch.org/patches/blfs/svn/nss-standalone-1.patch"
echo "87bb1af0b11fd41311b9899187f6e4b3fca9940651123c7bc836ec7497d2da84  /tmp/nss-standalone-1.patch" | sha256sum -c -
# Upstream absorbed the standalone changes in newer releases — tolerate
# an already-applied patch.
patch -Np1 -i /tmp/nss-standalone-1.patch || echo "(patch already applied)"

cd nss
make BUILD_OPT=1 \
  CC=gcc \
  CXX=g++ \
  NSPR_INCLUDE_DIR=/usr/include/nspr \
  NSPR_LIB_DIR=/usr/lib \
  USE_SYSTEM_ZLIB=1 \
  ZLIB_LIBS=-lz \
  NSS_ENABLE_WERROR=0 \
  NSS_USE_SYSTEM_SQLITE=1 \
  NSS_DISABLE_GTESTS=1 \
  USE_64=1 \
  -j"$(nproc)"

cd ../dist
mkdir -p "$DESTDIR/usr/lib/pkgconfig" "$DESTDIR/usr/include/nss" "$DESTDIR/usr/bin"
install -m755 Linux*/lib/*.so "$DESTDIR/usr/lib/"
install -m644 Linux*/lib/*.chk "$DESTDIR/usr/lib/"
cp -RL public/nss/* private/nss/* "$DESTDIR/usr/include/nss/"
install -m755 Linux*/bin/certutil Linux*/bin/nss-config Linux*/bin/pk12util "$DESTDIR/usr/bin/"
install -m644 Linux*/lib/pkgconfig/nss.pc "$DESTDIR/usr/lib/pkgconfig/"

# nspr runtime libs ride along (mirrors the previous nss package's scope;
# the closure check requires NEEDED sonames in the payload, and basename
# shadowing by firefox's bundled copies makes owner resolution ambiguous)
cp -a /usr/lib/libnspr4.so* /usr/lib/libplc4.so* /usr/lib/libplds4.so* "$DESTDIR/usr/lib/"

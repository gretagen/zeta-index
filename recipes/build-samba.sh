#!/bin/sh
# samba 4.25.1 (FHS, no LDAP/ADS/GPGME/JSON-AD/AD-DC — plain SMB file
# sharing for gnome-control-center's panel). waf puts libraries in
# lib64 on this host; the distro keeps everything in /usr/lib, so the
# tree is normalized after install (relative soname symlinks survive).
set -e

./configure --prefix=/usr --enable-fhs \
  --without-ldap --without-gpgme --without-json \
  --without-ad-dc --without-ads
make -j"$(nproc)"
make install DESTDIR="$DESTDIR"

if [ -d "$DESTDIR/usr/lib64" ]; then
  mkdir -p "$DESTDIR/usr/lib"
  cp -a "$DESTDIR/usr/lib64/." "$DESTDIR/usr/lib/"
  rm -rf "$DESTDIR/usr/lib64"
fi

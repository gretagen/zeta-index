#!/bin/sh
# build.sh — build s6 against skalibs (statically linked).
# Runs inside the extracted s6 source directory; $DESTDIR is the stage root.
set -eu
SRC="$(pwd)"
SKALIBS_VER=2.16.0.0
WORK="$(mktemp -d)"
trap 'rm -rf "$WORK"' EXIT

# fetch + build + stage skalibs
curl -fsSL "https://github.com/skarnet/skalibs/archive/refs/tags/v${SKALIBS_VER}.tar.gz" -o "$WORK/skalibs.tar.gz"
tar xzf "$WORK/skalibs.tar.gz" -C "$WORK"
SK="$WORK/skalibs-${SKALIBS_VER}"
mkdir -p "$WORK/skstage"
( cd "$SK" && ./configure --prefix=/usr --disable-shared && make && make install DESTDIR="$WORK/skstage" )

# build + install s6 against the staged skalibs
cd "$SRC"
./configure --prefix=/usr \
  --with-sysdeps="$SK/sysdeps.cfg" \
  --with-include="$WORK/skstage/usr/include" \
  --with-lib="$WORK/skstage/usr/lib" \
  --disable-shared --disable-execline
make
make install DESTDIR="$DESTDIR"

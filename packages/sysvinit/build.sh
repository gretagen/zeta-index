#!/bin/sh
# build.sh — build sysvinit and normalise the stage into usr/{bin,sbin}.
# Runs inside the extracted sysvinit source directory.
set -eu
make LDFLAGS="-lcrypt"
make LDFLAGS="-lcrypt" install DESTDIR="$DESTDIR"

STAGE="$DESTDIR"

# fold /sbin into /usr/sbin
if [ -d "$STAGE/sbin" ]; then
  mkdir -p "$STAGE/usr/sbin"
  mv "$STAGE"/sbin/* "$STAGE/usr/sbin/"
  rmdir "$STAGE/sbin"
fi

# fold /bin into /usr/bin
if [ -d "$STAGE/bin" ]; then
  mkdir -p "$STAGE/usr/bin"
  mv "$STAGE"/bin/* "$STAGE/usr/bin/"
  rmdir "$STAGE/bin"
fi

# upstream installs pidof as an absolute symlink to /sbin/killall5; the move
# breaks it, so recreate it relative (Zeta refuses absolute symlinks).
rm -f "$STAGE/usr/bin/pidof"
ln -s ../sbin/killall5 "$STAGE/usr/bin/pidof"

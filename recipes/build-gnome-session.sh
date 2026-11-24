#!/bin/sh
# gnome-session 51.0 (BLFS SysV flow): units go to a throwaway dir (they
# are useless outside systemd and clean_stage sweeps them anyway), and the
# wayland session desktop gets a dbus-run-session wrapper so the session
# gets a bus under dinit/openrc/runit/systemd alike (iniswap-clean).
set -e

meson setup build --prefix=/usr --buildtype=release --libdir=/usr/lib \
  --wrap-mode=nodownload -Dman=false -Ddocbook=false \
  -Dsystemduserunitdir=/tmp
ninja -C build
DESTDIR="$DESTDIR" ninja -C build install

# BLFS: the shipped desktop assumes systemd's session bus (51 names it
# plain gnome.desktop)
sed -i -e 's@^Exec=@&/usr/bin/dbus-run-session @' \
  "$DESTDIR/usr/share/wayland-sessions/gnome.desktop"

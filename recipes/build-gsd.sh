#!/bin/sh
# gnome-settings-daemon 51.1 (BLFS flow): libelogind fix for the power
# plugin test, backlight logind fix, then meson with systemd units disabled
# (init-agnostic: dinit/openrc/systemd all fine, units never ship).
set -e

# BLFS power-plugin test fix (the old backlight sed target no longer exists
# in 51.1 — the file was merged into gsd-power-manager.c).
sed -i -e 's/libsystemd/libelogind/' plugins/power/test.py || true

meson setup build --prefix=/usr --buildtype=release --libdir=/usr/lib \
  --wrap-mode=nodownload -Dsystemd=false -Dwwan=false -Dcolord=false
ninja -C build
DESTDIR="$DESTDIR" ninja -C build install

#!/bin/sh
# dbus 1.16.2-3: meson build (1.16 dropped autotools). The launch helper
# gets mode 4750 in the stage; the messagebus GROUP is applied by the
# manifest's install hook at provide time (zeta runs as root there).
set -e

meson setup build --prefix=/usr --sysconfdir=/etc --libdir=/usr/lib \
  --wrap-mode=nodownload \
  -Ddoxygen_docs=disabled -Dducktype_docs=disabled
ninja -C build
DESTDIR="$DESTDIR" ninja -C build install

chmod 4750 "$DESTDIR/usr/libexec/dbus-daemon-launch-helper"

#!/bin/sh
# power-profiles-daemon 0.30-2: BLFS flow, plus the init-agnostic fix —
# upstream ships Exec=/bin/false + SystemdService= (systemd only), so
# under dinit/openrc/runit dbus could never start the daemon. Point Exec
# at the real binary; SystemdService stays for systemd swaps (dbus prefers
# it whenever systemd is pid 1).
set -e

meson setup build --prefix=/usr --buildtype=release --libdir=/usr/lib \
  --wrap-mode=nodownload -Dtests=false -Dgtk_doc=false \
  -Dsystemdsystemunitdir=no
ninja -C build
DESTDIR="$DESTDIR" ninja -C build install

for s in "$DESTDIR"/usr/share/dbus-1/system-services/net.hadess.PowerProfiles.service \
         "$DESTDIR"/usr/share/dbus-1/system-services/org.freedesktop.UPower.PowerProfiles.service; do
  if [ -f "$s" ]; then
    sed -i 's|^Exec=/bin/false$|Exec=/usr/libexec/power-profiles-daemon|' "$s"
  fi
done

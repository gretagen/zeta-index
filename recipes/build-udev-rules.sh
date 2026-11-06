#!/bin/sh
# udev-rules 262: data-only extract of systemd's rules.d/ and hwdb.d/ —
# the input/uaccess rule set any udevd (systemd-259.1 on this host) needs,
# without dragging systemd daemons onto a dinit system. Several rules are
# shipped as ".in" templates with no placeholders (meson just strips the
# suffix), so both forms are copied with ".in" removed.
set -e

mkdir -p "$DESTDIR/usr/lib/udev/rules.d" "$DESTDIR/usr/lib/udev/hwdb.d"
for f in rules.d/*.rules rules.d/*.rules.in; do
  cp "$f" "$DESTDIR/usr/lib/udev/rules.d/$(basename "$f" .in)"
done
for f in hwdb.d/*.hwdb; do
  cp "$f" "$DESTDIR/usr/lib/udev/hwdb.d/$(basename "$f" .in)"
done

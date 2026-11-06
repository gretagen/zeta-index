#!/bin/sh
# shared-mime-info 2.5.1-2: install, then RUN update-mime-database on the
# staged tree — the meson build alone leaves no mime.cache (the installed
# package shipped a 244-byte stub, breaking every GIO content-type guess
# and thus gdk-pixbuf image recognition system-wide).
set -e

meson setup build --prefix=/usr --libdir=/usr/lib --buildtype=release -Dbuild-spec=false -Dbuild-tests=false
ninja -C build
DESTDIR="$DESTDIR" ninja -C build install
"$DESTDIR/usr/bin/update-mime-database" "$DESTDIR/usr/share/mime"

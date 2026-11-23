#!/bin/sh
# manual 1.0.3: CLI pager + wiki launcher. Content ships from the
# manual-cli/content tree; the GUI is a desktop entry plus an xdg-open
# shim (resolved launcher: Exec=manual-gui, icon on the pixmap path).
set -e

mkdir -p "$DESTDIR/usr/bin" "$DESTDIR/usr/share/manual" \
         "$DESTDIR/usr/share/pixmaps" "$DESTDIR/usr/share/applications"

install -m 755 manual-cli/manual "$DESTDIR/usr/bin/manual"
cp -a manual-cli/content/. "$DESTDIR/usr/share/manual/"
install -m 755 manual-gui/manual-gui "$DESTDIR/usr/bin/manual-gui"
install -m 644 manual-gui/icon.png "$DESTDIR/usr/share/pixmaps/haliade-manual.png"
install -m 644 manual-gui/manual.desktop "$DESTDIR/usr/share/applications/manual.desktop"

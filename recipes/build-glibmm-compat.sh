#!/bin/sh
# glibmm-compat 2.66.5: re-cut the proven old payload (the working
# 2.4-series binaries + headers + pc files) down to the 2.4 files
# only. No compilation: glib 2.90's G_DECLARE_FINAL_TYPE conversions
# make every historical glibmm source fail to build against this
# system's headers. DESTDIR is exported by zeta-makepkg.
set -e

# detect_source_dir lands us inside the payload's single usr/ dir when
# present (or at the root otherwise) — handle both
[ -d usr ] && P=usr || P=.

DEST="$DESTDIR/usr"
mkdir -p "$DEST/lib/pkgconfig" "$DEST/include"

# 2.4-series shared objects (incl. the generate_extra_defs helper)
cp -a "$P"/lib/libglibmm-2.4.so*     "$DEST/lib/"
cp -a "$P"/lib/libgiomm-2.4.so*      "$DEST/lib/"
cp -a "$P"/lib/libglibmm_generate_extra_defs-2.4.so* "$DEST/lib/" 2>/dev/null || true

# pkg-config files for the 2.4 series
cp -a "$P/lib/pkgconfig/glibmm-2.4.pc" "$DEST/lib/pkgconfig/"
cp -a "$P/lib/pkgconfig/giomm-2.4.pc"  "$DEST/lib/pkgconfig/"

# headers (2.4 dirs are distinct from the main package's 2.68 ones)
cp -a "$P/include/glibmm-2.4" "$DEST/include/"
cp -a "$P/include/giomm-2.4"  "$DEST/include/"

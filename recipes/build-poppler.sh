#!/bin/sh
# poppler 26.08.0-3 repack: (1) the source tree IS the payload (cwd is the
# usr/ contents); (2) strip nss/gpgmepp from every shipped poppler*.pc —
# their packages carry no .pc files and pkgconf resolves private requires
# even for dynamic queries, breaking every poppler-glib configure; (3)
# overwrite the STALE /usr/lib/pkgconfig/poppler.pc too (nemesis-era copy
# with nss/gpgmepp Requirements that shadows the lib64 one for pkgconf).
set -e

mkdir -p "$DESTDIR/usr"
cp -a . "$DESTDIR/usr/"

find "$DESTDIR/usr" -name "poppler*.pc" | while read -r pc; do
  sed -i "/^Requires.*nss/d; /^Requires.*gpgmepp/d" "$pc"
  sed -i "s/ nss >= [0-9.]*//g; s/ gpgmepp >= [0-9.]*//g; s/ nss//g; s/ gpgmepp//g" "$pc"
done

mkdir -p "$DESTDIR/usr/lib/pkgconfig"
cp -a "$DESTDIR/usr/lib64/pkgconfig/poppler.pc" "$DESTDIR/usr/lib/pkgconfig/poppler.pc"
cp -a "$DESTDIR/usr/lib64/pkgconfig/poppler-glib.pc" "$DESTDIR/usr/lib/pkgconfig/poppler-glib.pc"
cp -a "$DESTDIR/usr/lib64/pkgconfig/poppler-cpp.pc" "$DESTDIR/usr/lib/pkgconfig/poppler-cpp.pc" 2>/dev/null || true

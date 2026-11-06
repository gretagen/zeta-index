#!/bin/sh
# gdkmm extracted from the gtkmm-3.24 suite: drop demos and tests at the
# source level (the demo gresource step cannot run here), build everything,
# then prune the stage to gdkmm only (gdkmm has no standalone tarball;
# glibmm/pangomm/cairomm/atkmm are already their own packages).
set -e

sed -i "s|subdir(.demos/gtk-demo.)||" meson.build
sed -i "s|subdir(.tests.)||" meson.build

meson setup build --prefix=/usr --libdir=/usr/lib --buildtype=release
ninja -C build
DESTDIR="$DESTDIR" ninja -C build install

cd "$DESTDIR"
rm -rf usr/include/gtkmm-3.0 usr/include/glibmm-2.4 usr/include/cairomm-3.0 usr/include/pangomm-1.0 usr/include/atkmm-3.0
rm -rf usr/lib/gtkmm-3.0 usr/lib/glibmm-2.4 usr/lib/cairomm-3.0 usr/lib/pangomm-1.0 usr/lib/atkmm-3.0
rm -f usr/lib/libgtkmm-3.0.so* usr/lib/libglibmm-2.4.so* usr/lib/libcairomm-3.0.so* usr/lib/libpangomm-1.0.so* usr/lib/libatkmm-3.0.so*
rm -f usr/lib/pkgconfig/gtkmm-3.0.pc usr/lib/pkgconfig/glibmm-2.4.pc usr/lib/pkgconfig/cairomm-3.0.pc usr/lib/pkgconfig/pangomm-1.0.pc usr/lib/pkgconfig/atkmm-3.0.pc
rm -f usr/share/gir-1.0/Gtkmm* usr/share/gir-1.0/Glibmm* usr/share/gir-1.0/Cairomm* usr/share/gir-1.0/Pangomm* usr/share/gir-1.0/Atkmm*
rm -f usr/lib/girepository-1.0/Gtkmm* usr/lib/girepository-1.0/Glibmm* usr/lib/girepository-1.0/Cairomm* usr/lib/girepository-1.0/Pangomm* usr/lib/girepository-1.0/Atkmm*
rm -rf usr/share/aclocal

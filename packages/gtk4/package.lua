return {
  name    = "gtk4",
  version = "4.24.1",
  summary = "GTK+ 4 toolkit (X11 + Wayland)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gtk4/gtk4-4.24.1.tar.gz",
  sha256  = "ec43ee6e83f57b4788e9f9d98b0a0a36510a63323c48b11e02dd923a61b12696",
  deps    = { "glibc", "at-spi2-core", "cairo", "fontconfig", "fribidi", "gdk-pixbuf", "graphene", "harfbuzz", "libX11", "libXcomposite", "libXcursor", "libXdamage", "libXext", "libXfixes", "libXi", "libXinerama", "libXrandr", "libepoxy", "libz", "pango", "glib>=2.89.3", "wayland", "wayland-protocols", "xkbcommon", "libcups", "librsvg" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libgtk-4.so.1 && test -f " .. p.install_root .. "/usr/lib/girepository-1.0/Gtk-4.0.typelib && test -f " .. p.install_root .. "/usr/share/gir-1.0/Gtk-4.0.gir && test -x " .. p.install_root .. "/usr/bin/gtk4-query-settings && " .. p.install_root .. "/usr/bin/gtk4-query-settings | grep -q gtk-theme")
  end,
}

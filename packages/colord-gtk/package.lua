return {
  name    = "colord-gtk",
  version = "0.3.1",
  summary = "GTK widgets and helpers for colord",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/colord-gtk/colord-gtk-0.3.1.tar.gz",
  sha256  = "1d45d02f0595fce0fb294e9b6445373640d9f6a06028d9fdcb7a5ad4d1f74e4b",
  deps    = { "glibc", "glib", "gtk3", "colord", "lcms2", "gobject-introspection", "gtk4" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libcolord-gtk.so* | grep -q . && ls " .. p.install_root .. "/usr/lib/pkgconfig/colord-gtk*.pc | grep -q .")
  end,
}

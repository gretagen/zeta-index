return {
  name    = "librsvg",
  version = "2.60.0-2",
  summary = "SVG renderer library (gir-enabled)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/librsvg/librsvg-2.60.0-2.tar.gz",
  sha256  = "8f2b9dbd0b5fb94b4781243cd3400d8b64858b58c75a9028f6df470b2b974d1e",
  deps    = { "glibc", "glib", "cairo", "pango", "gdk-pixbuf", "gobject-introspection", "gcc", "dav1d" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/librsvg-2.so* | grep -q . && test -f " .. p.install_root .. "/usr/share/gir-1.0/Rsvg-2.0.gir && test -f " .. p.install_root .. "/usr/lib/girepository-1.0/Rsvg-2.0.typelib")
  end,
}

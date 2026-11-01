return {
  name    = "pango",
  version = "1.58.2",
  summary = "Text rendering and layout (gir-enabled)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/pango/pango-1.58.2.tar.gz",
  sha256  = "70ba8d965967f1cf85622fb57033b206282cfb36ef92be43fbeacb65e51899e9",
  deps    = { "glibc", "cairo", "harfbuzz", "fribidi", "fontconfig", "freetype", "libXft", "libXrender", "glib", "gobject-introspection" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libpango-1.0.so.0 && test -f " .. p.install_root .. "/usr/lib/girepository-1.0/Pango-1.0.typelib && test -x " .. p.install_root .. "/usr/bin/pango-list && " .. p.install_root .. "/usr/bin/pango-list | grep -q Font")
  end,
}

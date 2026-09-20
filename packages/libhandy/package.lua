return {
  name    = "libhandy",
  version = "1.8.3",
  summary = "GTK 3 UI elements for mobile devices",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libhandy/libhandy.pkg.tar.zst",
  sha256  = "7376759a318a975eb52472044440d9cb85376202ccb074c7abf3a2639b826666",
  deps    = { "at-spi2-core", "cairo", "fribidi", "libgcc", "gdk-pixbuf2", "glib2", "gtk3", "pango", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}

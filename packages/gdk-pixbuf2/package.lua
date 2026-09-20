return {
  name    = "gdk-pixbuf2",
  version = "2.44.7",
  summary = "Image loading library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/gdk-pixbuf2/gdk-pixbuf2-2.44.7-1-x86_64.pkg.tar.zst",
  sha256  = "2e145c45dc517c8c29e4014aa08098c739e5e8509cb9a7afc5cfcc301d951839",
  deps    = { "glib2", "libjpeg-turbo", "libpng", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}

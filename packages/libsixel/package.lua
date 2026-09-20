return {
  name    = "libsixel",
  version = "1.10.5",
  summary = "Provides a codec for DEC SIXEL graphics and some converter programs",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libsixel/libsixel.pkg.tar.zst",
  sha256  = "c9569636dd03f2833720f8cb3b565c0944117fb10dc06a54d7c442a50a27072f",
  deps    = { "curl", "gdk-pixbuf2", "glib2", "libjpeg-turbo", "libpng", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}

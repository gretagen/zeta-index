return {
  name    = "ghostscript",
  version = "10.08.0",
  summary = "An interpreter for the PostScript language",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/ghostscript/ghostscript.pkg.tar.zst",
  sha256  = "869b22230802a93bcde28bd53f8fa91a5ab2d1a1b96ff8b94627b9119b391bf4",
  deps    = { "libcups", "fontconfig", "zlib", "libpng", "libjpeg-turbo", "libtiff", "lcms2", "openjpeg2", "cairo", "libx11", "gdk-pixbuf2", "glib2", "sh", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}

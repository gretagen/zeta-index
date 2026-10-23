return {
  name    = "poppler",
  version = "26.08.0-2",
  summary = "PDF rendering library (with Qt6 wrapper)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/poppler/poppler-26.08.0-2.tar.gz",
  sha256  = "423acdd25a495e56c7563e1dc0c80cfae4b26b432643be7651d4a29b05ece287",
  deps    = { "glibc", "libjpeg-turbo", "cairo", "fontconfig", "lcms2", "curl", "gpgme", "libpng", "freetype", "libz", "openjpeg2", "qtbase", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libpoppler-qt6.so.3 -o -e " .. p.install_root .. "/usr/lib64/libpoppler-qt6.so.3")
  end,
}

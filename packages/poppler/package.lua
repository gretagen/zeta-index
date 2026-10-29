return {
  name    = "poppler",
  version = "26.08.0-3",
  summary = "PDF rendering library (pc Requires repaired)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/poppler/poppler-26.08.0-3.tar.gz",
  sha256  = "431c5040cfc52803b306e2bdf6536d7bf9ff0b534f8a1da211243d2ebfcd34d8",
  deps    = { "glibc", "libjpeg-turbo", "cairo", "fontconfig", "lcms2", "curl", "gpgme", "libpng", "freetype", "libz", "openjpeg2", "qtbase", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib64/pkgconfig/poppler-glib.pc || test -f " .. p.install_root .. "/usr/lib/pkgconfig/poppler-glib.pc && ! grep -l \"gpgmepp\" $(find " .. p.install_root .. " -name \"poppler*.pc\") | grep -q .")
  end,
}

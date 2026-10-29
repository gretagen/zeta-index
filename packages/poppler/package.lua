return {
  name    = "poppler",
  version = "26.08.0-4",
  summary = "PDF rendering library (pc Requires repaired)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/poppler/poppler-26.08.0-4.tar.gz",
  sha256  = "a36130b5d001a6ac329fefdb6140f6dcf6bc1cfacfbbb1bd109657b8c9581333",
  deps    = { "glibc", "libjpeg-turbo", "cairo", "fontconfig", "lcms2", "curl", "gpgme", "libpng", "freetype", "libz", "openjpeg2", "qtbase", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib64/pkgconfig/poppler-glib.pc || test -f " .. p.install_root .. "/usr/lib/pkgconfig/poppler-glib.pc && ! grep -l \"gpgmepp\" $(find " .. p.install_root .. " -name \"poppler*.pc\") | grep -q .")
  end,
}

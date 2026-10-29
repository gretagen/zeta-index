return {
  name    = "poppler",
  version = "26.08.0-3",
  summary = "PDF rendering library (pc Requires repaired)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/poppler/poppler-26.08.0-3.tar.gz",
  sha256  = "509cc23568f772e8a5b9f7c38863007f1f7151deb5f505423bc826da55c564c0",
  deps    = { "glibc", "libjpeg-turbo", "cairo", "fontconfig", "lcms2", "curl", "gpgme", "libpng", "freetype", "libz", "openjpeg2", "qtbase", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib64/pkgconfig/poppler-glib.pc || test -f " .. p.install_root .. "/usr/lib/pkgconfig/poppler-glib.pc && ! grep -l \"gpgmepp\" $(find " .. p.install_root .. " -name \"poppler*.pc\") | grep -q .")
  end,
}

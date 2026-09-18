return {
  name    = "poppler",
  version = "26.08.0",
  summary = "PDF rendering library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/poppler/poppler-26.08.0.pkg.tar.zst",
  sha256  = "b3936326ea6375ef43a40ec0d7fce5fbd11b8b0b0483d628f8d9c64dfb843d7f",
  deps    = { "libjpeg-turbo", "cairo", "fontconfig", "lcms2", "nss", "curl", "gpgme", "libpng", "freetype", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

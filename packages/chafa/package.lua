return {
  name    = "chafa",
  version = "1.18.3-1-x86_64",
  summary = "Terminal image viewer/convertor (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/chafa/chafa-1.18.3-1-x86_64.pkg.tar.zst",
  sha256  = "f26003764c354bd36fc4069e6bdc2d464eb4c4eaa8ec61a822ca40c032e738e8",
  deps    = { "glibc", "libjpeg-turbo", "librsvg", "cairo", "glib", "libtiff", "libwebp", "libjxl", "libavif", "libheif", "freetype" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/chafa")
  end,
}

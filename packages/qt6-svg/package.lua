return {
  name    = "qt6-svg",
  version = "6.12.0-1-x86_64",
  summary = "classes for displaying the contents of SVG files",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/qt6-svg/qt6-svg-6.12.0-1-x86_64.pkg.tar.zst",
  sha256  = "922e48a36b2c8e1ac16c2b5f222f0e33e52fb2ec5384e69715eb427512af7ebf",
  deps    = { "glibc", "libstdc++", "qt6-base", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libQt6Svg.so.6.12.0")
  end,
}

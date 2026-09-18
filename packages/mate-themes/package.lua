return {
  name    = "mate-themes",
  version = "3.22.26",
  summary = "Themes for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mate-themes/mate-themes-3.22.26.pkg.tar.zst",
  sha256  = "559beff3e761e3c9e615af5583e66275c3f1d1c58416480ace7528747969724d",
  deps    = {},
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

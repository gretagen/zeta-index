return {
  name    = "mate-icon-theme",
  version = "1.28.0",
  summary = "Icon theme for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mate-icon-theme/mate-icon-theme-1.28.0.pkg.tar.zst",
  sha256  = "e7f229ef53b9e41722df3a2e2cb5832affb2aabe4e87696d23baf83c83857309",
  deps    = {},
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

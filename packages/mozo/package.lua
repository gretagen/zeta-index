return {
  name    = "mozo",
  version = "1.28.0",
  summary = "Menu editor for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mozo/mozo-1.28.0.pkg.tar.zst",
  sha256  = "642bab137703f045999a094f88fdf5500ae6b14b424c55d20321d7c4e523513a",
  deps    = { "gtk3", "mate-menus", "gettext", "mate-panel" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

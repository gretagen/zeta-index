return {
  name    = "mate-menus",
  version = "1.28.1",
  summary = "Menu system for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mate-menus/mate-menus-1.28.1.pkg.tar.zst",
  sha256  = "3e73f1946533ca723c7395b2dadf5000a2384d90e47556c7b1419f035e2ac757",
  deps    = { "glib" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

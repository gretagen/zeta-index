return {
  name    = "lxmenu-data",
  version = "0.1.7",
  summary = "Freedesktop menu definitions for LXDE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/lxmenu-data/lxmenu-data-0.1.7-1-any.pkg.tar.zst",
  sha256  = "285a8388cd149dbc984589daf7881f37184890fb4a7f62d531acf1fe1dda2609",
  deps    = {},
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/share/desktop-directories")
  end,
}

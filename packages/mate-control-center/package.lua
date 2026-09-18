return {
  name    = "mate-control-center",
  version = "1.28.1",
  summary = "Control center for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mate-control-center/mate-control-center-1.28.1.pkg.tar.zst",
  sha256  = "1f3e8d581861b8c5cbfff61a30859588380182bc0834acd5e38456e2f7154289",
  deps    = { "mate-menus", "mate-settings-daemon", "marco", "mate-desktop", "gettext", "accountsservice", "mate-panel", "libcanberra", "udisks2", "libayatana-appindicator" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

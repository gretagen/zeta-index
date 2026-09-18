return {
  name    = "mate-power-manager",
  version = "1.28.1",
  summary = "Power manager for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mate-power-manager/mate-power-manager-1.28.1.pkg.tar.zst",
  sha256  = "8b1de42529ac3993f0cf7f67147cd32f8f1720b79d4960ea039845c54c6cd19e",
  deps    = { "dbus-glib", "gettext", "libcanberra", "libnotify", "upower", "polkit", "libsecret" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

return {
  name    = "mate-settings-daemon",
  version = "1.28.0",
  summary = "Settings daemon for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mate-settings-daemon/mate-settings-daemon-1.28.0.pkg.tar.zst",
  sha256  = "0cce66e59b004140925cb18a6913c4321a8f392f2ef1a7d703194dd6ee79afde",
  deps    = { "dbus-glib", "libcanberra", "libmatekbd", "libmatemixer", "libnotify", "mate-desktop", "nss", "polkit", "gettext" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

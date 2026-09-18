return {
  name    = "mate-notification-daemon",
  version = "1.29.0",
  summary = "Notification daemon for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mate-notification-daemon/mate-notification-daemon-1.29.0.pkg.tar.zst",
  sha256  = "db109f8b8f27b059961e92e16dfefa44475a20b7b731581bc927560815a9b4f7",
  deps    = { "libcanberra", "libwnck3", "libnotify", "gettext", "mate-panel" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

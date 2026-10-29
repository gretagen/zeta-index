return {
  name    = "mate-notification-daemon",
  version = "1.28.3",
  summary = "Notification daemon for MATE",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mate-notification-daemon/mate-notification-daemon-1.28.3.tar.gz",
  sha256  = "09f1cccb1ef0b9255700a69759cafaa57fc6bf6441238f1fb4004eb10ce5a53f",
  deps    = { "glibc", "glib", "gtk3", "libcanberra", "libwnck3", "libnotify", "gettext", "mate-panel" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\" && test -x " .. p.install_root .. "/usr/libexec/mate-notification-daemon")
  end,
}

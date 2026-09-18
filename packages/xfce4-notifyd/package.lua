return {
  name    = "xfce4-notifyd",
  version = "0.9.7",
  summary = "Notification daemon for Xfce with theming support",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xfce4-notifyd/xfce4-notifyd-0.9.7.tar.gz",
  sha256  = "0a876d9e3435925f75c39e8bad869fe5a8fa19fda359ceca88e74017c40e549d",
  deps    = { "glibc", "xfce4-panel", "libxfce4ui", "libxfce4util", "xfconf", "libnotify", "sqlite", "gtk3", "glib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/xfce4/notifyd/xfce4-notifyd -a -e " .. p.install_root .. "/usr/lib/xfce4/panel/plugins/libnotification-plugin.so")
  end,
}

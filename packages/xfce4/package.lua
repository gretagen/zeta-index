return {
  name    = "xfce4",
  version = "4.20",
  summary = "Xfce desktop group (meta-package)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xfce4/xfce4-4.20.tar.gz",
  sha256  = "7d7587af5dc6cd4f8eb9d3ef33af82d77faa89466c03493330e52688d6d4ca48",
  deps    = { "libxfce4util", "xfconf", "garcon", "libxfce4ui", "exo", "libxfce4windowing", "xfce4-session", "xfce4-panel", "xfce4-settings", "xfce4-appfinder", "xfwm4", "xfdesktop", "thunar", "xfce4-terminal", "xfce4-power-manager", "xfce4-notifyd", "libwnck3", "libxklavier", "vte", "libnotify", "upower", "libXres", "libXpresent", "libdisplay-info", "sqlite", "tango-icon-theme", "adwaita-icon-theme", "startup-notification" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root)
  end,
}

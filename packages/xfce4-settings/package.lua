return {
  name    = "xfce4-settings",
  version = "4.20.5",
  summary = "Xfce settings manager and configuration dialogs",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xfce4-settings/xfce4-settings-4.20.5.tar.gz",
  sha256  = "652916f1498a6af36a25543f36794d700b9a62209cdff26341f04ea1f429e1d1",
  deps    = { "glibc", "libxfce4ui", "libxfce4util", "xfconf", "libnotify", "upower", "libxklavier", "fontconfig", "gtk3", "glib", "libX11", "libXext", "libXi", "libXrandr" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/xfsettingsd")
  end,
}

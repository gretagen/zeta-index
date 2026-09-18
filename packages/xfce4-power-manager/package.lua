return {
  name    = "xfce4-power-manager",
  version = "4.20.1",
  summary = "Power manager for Xfce",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xfce4-power-manager/xfce4-power-manager-4.20.1.tar.gz",
  sha256  = "1e96bcb0dd4d711b773e206fdb7bd4505f1cdda390598defe3a3c7f72ca2b0ae",
  deps    = { "glibc", "libxfce4ui", "libxfce4util", "xfconf", "libnotify", "upower", "polkit", "gtk3", "glib", "libX11", "libXext", "libXrandr" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/xfce4-power-manager")
  end,
}

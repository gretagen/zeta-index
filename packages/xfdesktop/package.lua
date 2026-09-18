return {
  name    = "xfdesktop",
  version = "4.20.2",
  summary = "Xfce desktop background and icons manager",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xfdesktop/xfdesktop-4.20.2.tar.gz",
  sha256  = "f16fe339b36a15d81a499b65f9abcb12ad3d1e18c87cb614863e3bd52d615672",
  deps    = { "glibc", "exo", "garcon", "libxfce4windowing", "thunar", "libxfce4ui", "libxfce4util", "xfconf", "libnotify", "libyaml", "gtk3", "glib", "pango", "libX11" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/xfdesktop")
  end,
}

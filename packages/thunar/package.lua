return {
  name    = "thunar",
  version = "4.20.9",
  summary = "File manager for Xfce",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/thunar/thunar-4.20.9.tar.gz",
  sha256  = "c120b2f3fd7af57b5decbe874aee426f3101ca325b6e95348e0284fba75411a1",
  deps    = { "glibc", "exo", "libxfce4ui", "libxfce4util", "xfconf", "libgudev", "libnotify", "gtk3", "glib", "libSM", "libICE", "harfbuzz", "cairo", "pango" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/thunar -a -e " .. p.install_root .. "/usr/lib/libthunarx-3.so.0")
  end,
}

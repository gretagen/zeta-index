return {
  name    = "xfce4-panel",
  version = "4.20.8",
  summary = "Xfce desktop panel",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xfce4-panel/xfce4-panel-4.20.8.tar.gz",
  sha256  = "6c30ff6ef8005d9f5126974ad032750ac5d4de13a791b366931fa30d5065e3ba",
  deps    = { "glibc", "libxfce4windowing", "libxfce4ui", "libxfce4util", "xfconf", "gtk3", "glib", "cairo", "gdk-pixbuf", "pango", "libX11" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/xfce4-panel -a -e " .. p.install_root .. "/usr/lib/libxfce4panel-2.0.so.4")
  end,
}

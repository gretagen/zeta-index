return {
  name    = "libxfce4windowing",
  version = "4.20.6",
  summary = "X11 and Wayland windowing library for Xfce",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libxfce4windowing/libxfce4windowing-4.20.6.tar.gz",
  sha256  = "4efa1e22c39a25fd97baaea7d2cebfe3957a18143a53d22eeecb0f34fc4ca66d",
  deps    = { "glibc", "libwnck3", "gtk3", "glib", "libdisplay-info", "libX11", "libXrandr", "cairo", "gdk-pixbuf", "pango" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libxfce4windowing-0.so.0")
  end,
}

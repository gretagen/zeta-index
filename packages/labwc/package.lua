return {
  name    = "labwc",
  version = "0.20.1",
  summary = "wlroots-based Wayland compositor inspired by Openbox",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/labwc/labwc-0.20.1.tar.gz",
  sha256  = "f642dcf95630919446c074f99e026f42d13ba154154cc4c50dae0c100ad19e8f",
  deps    = { "glibc", "wlroots", "wayland", "wayland-protocols", "libdrm", "xkbcommon", "pixman", "libxml2", "glib", "cairo", "pango", "libpng", "libinput", "librsvg", "libxcb", "xcb-util", "xcb-util-wm", "xcb-util-keysyms", "xcb-util-cursor", "xcb-util-image", "xcb-util-renderutil" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/labwc")
  end,
}

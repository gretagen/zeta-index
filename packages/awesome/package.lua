return {
  name    = "awesome",
  version = "4.3-7-x86_64",
  summary = "highly configurable framework window manager",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/awesome/awesome-4.3-7-x86_64.pkg.tar.zst",
  sha256  = "ddc80415fc65292fc8ba308b6eaa853fb94423f9f9b3ec88a40a8a265345b1c6",
  deps    = { "bash", "cairo", "dbus", "gdk-pixbuf", "glib", "glibc", "libX11", "libxcb", "libxdg-basedir", "xkbcommon", "libxkbcommon-x11", "lua53", "lua53-lgi", "pango", "startup-notification", "xcb-util", "xcb-util-cursor", "xcb-util-keysyms", "xcb-util-wm", "xcb-util-xrm" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/awesome")
  end,
}

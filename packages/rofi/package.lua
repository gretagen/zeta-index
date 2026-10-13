return {
  name    = "rofi",
  version = "2.0.0",
  summary = "Window switcher, application launcher and dmenu replacement",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/rofi/rofi-2.0.0.tar.gz",
  sha256  = "4fd7eb95cb67a4b5b0471879a214f5291c88cce7c6804f424725664539393363",
  deps    = { "glibc", "glib", "cairo", "pango", "gdk-pixbuf", "xkbcommon", "libxcb", "xcb-util", "xcb-util-wm", "xcb-util-cursor", "xcb-util-keysyms", "startup-notification", "libxcb-imdkit", "wayland" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/rofi && " .. p.install_root .. "/usr/bin/rofi -version")
  end,
}

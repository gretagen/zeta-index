return {
  name    = "rofi",
  version = "1.7.8",
  summary = "Window switcher, application launcher and dmenu replacement",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/rofi/rofi-1.7.8.tar.gz",
  sha256  = "0de6dacf33ee28b0ddf0b4dda0da56d65fe5b74444ca2dd7e1c79323ffebdaa1",
  deps    = { "glibc", "glib", "cairo", "pango", "gdk-pixbuf", "xkbcommon", "libxcb", "xcb-util", "xcb-util-wm", "xcb-util-cursor", "xcb-util-keysyms", "libxcb-xrm", "startup-notification" },
  archive = { strip = 1 },
}

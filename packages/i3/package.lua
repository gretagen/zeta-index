return {
  name    = "i3",
  version = "4.25.1",
  summary = "Improved tiling window manager for X11",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/i3/i3-4.25.1.tar.gz",
  sha256  = "71fd59da7b7f3c159acfb23b5991b91bf8a1eb6d133feea217124442702580a0",
  deps    = { "glibc", "libev", "yajl", "libxcb", "xcb-util", "xcb-util-cursor", "xcb-util-keysyms", "xcb-util-wm", "libxcb-xrm", "xkbcommon", "pcre2", "cairo", "pango", "glib", "startup-notification" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/i3")
    p:run("test -x " .. p.install_root .. "/usr/bin/i3bar")
    p:run("test -x " .. p.install_root .. "/usr/bin/i3-msg")
  end,
}

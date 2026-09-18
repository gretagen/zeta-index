return {
  name    = "startup-notification",
  version = "0.12",
  summary = "X11 application startup notification library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/startup-notification/startup-notification-0.12.tar.gz",
  sha256  = "fa46855411df9bc820a0ba52234c30990fb15eba8ae6f9fe4ab5b1a281bfeaf0",
  deps    = { "glibc", "libX11", "libxcb", "xcb-util" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libstartup-notification-1.so.0")
  end,
}

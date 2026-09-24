return {
  name    = "wmaker",
  version = "0.96.0",
  summary = "X11 window manager with a NeXTSTEP look and feel",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/wmaker/wmaker-0.96.0.tar.gz",
  sha256  = "5b82697ec6adf946bd9c5c2f7f23f4fd116632c48b427e65e83b543fca1f5625",
  deps    = { "bash", "fontconfig", "giflib", "glibc", "libexif", "libjpeg-turbo", "libpng", "libtiff", "libwebp", "libX11", "libXext", "libXft", "libXinerama", "libXmu", "libXpm", "libXrandr", "pango" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/wmaker")
  end,
}

return {
  name    = "wmaker",
  version = "0.96.0",
  summary = "X11 window manager with a NeXTSTEP look and feel",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/wmaker/windowmaker.pkg.tar.zst",
  sha256  = "880c7098458d61f70bb32ed035cf16b91b852510a3ecffab1188074b2f976183",
  deps    = { "bash", "fontconfig", "giflib", "glibc", "libexif", "libjpeg-turbo", "libpng", "libtiff", "libwebp", "libX11", "libXext", "libXft", "libXinerama", "libXmu", "libXpm", "libXrandr", "pango" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/wmaker")
  end,
}

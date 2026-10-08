return {
  name    = "wmaker",
  version = "0.96.0-2",
  summary = "X11 window manager with a NeXTSTEP look and feel",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/wmaker/wmaker-0.96.0-2.tar.gz",
  sha256  = "b3bd1a4267b8430f9fcf6ca1086efc81299232fc2005d4b9f11d4decedc8669a",
  deps    = { "bash", "fontconfig", "giflib", "glibc", "imagemagick", "libexif", "libgomp", "libjpeg-turbo", "libpng", "libtiff", "libwebp", "libX11", "libXext", "libXft", "libXinerama", "libXmu", "libXpm", "libXrandr", "libXres", "pango" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/wmaker && test -f " .. p.install_root .. "/usr/share/xsessions/wmaker.desktop")
    -- tripwire: libwraster must match the shipped libjpeg-turbo (.so.8 ABI)
    p:run("readelf -d " .. p.install_root .. "/usr/lib/libwraster.so.6.1.0 | grep -q libjpeg.so.8")
  end,
}

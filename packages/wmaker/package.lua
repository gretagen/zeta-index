return {
  name    = "wmaker",
  version = "0.96.0-3",
  summary = "X11 window manager with a NeXTSTEP look and feel",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/wmaker/wmaker-0.96.0-3.tar.gz",
  sha256  = "fc978a32bbb27001b53d52341e9c68439cd4055cb72e4dd39a0bac11bccd2191",
  deps    = { "glibc", "libX11", "libXext", "libXft", "libXmu", "libXpm", "libXinerama", "libXrandr", "libpng", "libjpeg-turbo", "libtiff", "giflib", "libwebp", "fontconfig", "freetype", "pango", "libexif", "mesa-drivers" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/wmaker && test -f " .. p.install_root .. "/usr/share/xsessions/wmaker.desktop")
    -- tripwire: libwraster must match the shipped libjpeg-turbo (.so.8 ABI)
    p:run("readelf -d " .. p.install_root .. "/usr/lib/libwraster.so.6.1.0 | grep -q libjpeg.so.8")
    -- tripwire: build must link libXrandr (RandR enabled)...
    p:run("readelf -d " .. p.install_root .. "/usr/bin/wmaker | grep -q libXrandr")
    -- ...and must NOT re-link imagemagick / XRes / OpenMP (regression guard)
    p:run("! readelf -d " .. p.install_root .. "/usr/bin/wmaker " .. p.install_root .. "/usr/bin/WPrefs " .. p.install_root .. "/usr/lib/libwraster.so.6.1.0 " .. p.install_root .. "/usr/bin/wmsetbg | grep -q -E \"lib(Magick|XRes|gomp)\"")
  end,
}
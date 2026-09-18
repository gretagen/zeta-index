return {
  name    = "qt5",
  version = "5.15.19",
  summary = "Qt 5 runtime libraries (Core/Gui/Widgets/Svg/X11Extras/XcbQpa + plugins)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/qt5/qt5-5.15.19.tar.gz",
  sha256  = "c44f9b0c5b619fbdf94032e8da733cdcfa0e76ace3a9dc4093ce3681eca653b0",
  deps    = { "glibc", "double-conversion", "fontconfig", "freetype", "glib", "gtk3", "harfbuzz", "icu", "libX11", "libXcomposite", "libdrm", "libglvnd", "libinput", "libmtdev", "libpng", "libxcb", "libz", "md4c", "mesa-drivers", "pango", "pcre2", "tslib", "wayland", "xcb-util-image", "xcb-util-keysyms", "xcb-util-renderutil", "xcb-util-wm", "xkbcommon", "zstd" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libQt5Core.so.5")
  end,
}

return {
  name    = "qtbase",
  version = "6.8.2-3",
  summary = "Qt 6 base libraries",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/qtbase/qtbase-6.8.2-3.tar.gz",
  sha256  = "892edd92901c36a6f3cac94c73b6665e86e372d51fb78a8d57b3adcea9e8f6f3",
  deps    = { "glibc", "at-spi2-core", "brotli", "cairo", "dbus", "double-conversion", "egl", "fontconfig", "freetype", "gdk-pixbuf", "gcc", "glib", "gtk3", "icu", "krb5", "libICE", "libSM", "libcups", "libb2", "libdrm", "libinput", "libmd", "libmtdev", "libpng", "libz", "libzstd", "md4c", "mesa-drivers", "openssl", "pango", "pcre2", "tslib", "xcb-util-cursor", "xcb-util-image", "xcb-util-keysyms", "xcb-util-renderutil", "xcb-util-wm", "xkbcommon", "zstd" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libQt6Core.so.6 -a -e " .. p.install_root .. "/usr/lib/libQt6Gui.so.6")
  end,
}

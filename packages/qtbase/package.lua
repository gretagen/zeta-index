return {
  name    = "qtbase",
  version = "6.8.2-2",
  summary = "Qt 6 base libraries",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/qtbase/qtbase-6.8.2-2.tar.gz",
  sha256  = "0bc139205031f9e984d5a46ddc6102588941ca3e1163a6fdbc490cd41bd322ce",
  deps    = { "glibc", "at-spi2-core", "brotli", "cairo", "dbus", "double-conversion", "fontconfig", "freetype", "gdk-pixbuf", "gcc", "gtk3", "krb5", "libICE", "libSM", "libcups", "libb2", "libdrm", "libinput", "libmtdev", "libpng", "libz", "libzstd", "md4c", "pango", "pcre2", "tslib", "xcb-util-cursor", "xcb-util-image", "xcb-util-keysyms", "xcb-util-renderutil", "xcb-util-wm", "xkbcommon", "zstd" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libQt6Core.so.6 -a -e " .. p.install_root .. "/usr/lib/libQt6Gui.so.6 && test -e " .. p.install_root .. "/usr/plugins/platforms/libqxcb.so && test -e " .. p.install_root .. "/usr/plugins/networkinformation/libqglib.so && test ! -e " .. p.install_root .. "/usr/lib/qt6/plugins && grep -q 'Plugins = /usr/plugins' " .. p.install_root .. "/etc/qt.conf")
  end,
}

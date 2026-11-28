return {
  name    = "qtbase",
  version = "6.8.2-4",
  summary = "Qt 6 base libraries (Core, Gui, Widgets, Network, …)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/qtbase/qtbase-6.8.2-4.tar.gz",
  sha256  = "39f6efd3a9dc6fe3639ec9155db52139db4691b3b6341b0b131dd3eb6c0c0e7a",
  deps    = { "glibc", "at-spi2-core", "brotli", "cairo", "dbus", "double-conversion", "egl", "fontconfig", "freetype", "gdk-pixbuf", "gcc", "glib", "gtk3", "icu", "krb5", "libICE", "libSM", "libcups", "libb2", "libdrm", "libinput", "libmd", "libmtdev", "libpng", "libz", "libzstd", "md4c", "mesa-drivers", "openssl", "pango", "pcre2", "tslib", "xcb-util-cursor", "xcb-util-image", "xcb-util-keysyms", "xcb-util-renderutil", "xcb-util-wm", "xkbcommon", "zstd", "vulkan-loader" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libQt6Core.so.6 && test -e " .. p.install_root .. "/usr/lib/libQt6Gui.so.6 && grep -q 'QT_FEATURE_vulkan 1' " .. p.install_root .. "/usr/include/QtGui/qtgui-config.h && test -f " .. p.install_root .. "/usr/include/QtGui/QVulkanInstance")
  end,
}

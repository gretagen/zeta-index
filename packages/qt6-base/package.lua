return {
  name    = "qt6-base",
  version = "6.12.0-3-x86_64",
  summary = "a cross-platform application and UI framework",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/qt6-base/qt6-base-6.12.0-3-x86_64.pkg.tar.zst",
  sha256  = "dea8a8c45a7929af115a2ba96c60dff927425f8c65432cf5d1027c79c8aa98f0",
  deps    = { "brotli", "dbus", "double-conversion", "fontconfig", "freetype", "glib", "glibc", "harfbuzz", "icu", "krb5", "libb2", "libcups", "libdrm", "libgcc", "mesa-full", "libICE", "libinput", "libjpeg-turbo", "libpng", "libproxy", "libSM", "libstdc++", "liburing", "libX11", "libxcb", "xkbcommon", "libxkbcommon-x11", "md4c", "libmtdev", "openssl", "pcre2", "shared-mime-info", "sqlite", "systemd-libs", "tslib", "wayland", "xcb-util-cursor", "xcb-util-image", "xcb-util-keysyms", "xcb-util-renderutil", "xcb-util-wm", "xdg-utils", "libz", "zstd", "qt6-translations" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libQt6Concurrent.so.6.12.0")
  end,
}

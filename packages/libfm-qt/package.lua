return {
  name    = "libfm-qt",
  version = "2.1.0",
  summary = "Qt6 file-manager library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libfm-qt/libfm-qt-2.1.0.tar.gz",
  sha256  = "908aa79e7a4ada06a09cfc3f68242c006f1fa73edec4ce3f0c02895dddd2d066",
  deps    = { "glibc", "libexif", "menu-cache", "qtbase", "xcb-util", "xcb-util-cursor", "xcb-util-image", "xcb-util-keysyms", "xcb-util-renderutil", "xcb-util-wm" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libfm-qt6.so.15")
  end,
}

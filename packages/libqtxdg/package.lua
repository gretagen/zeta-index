return {
  name    = "libqtxdg",
  version = "4.1.0",
  summary = "Qt6 XDG integration library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libqtxdg/libqtxdg-4.1.0.tar.gz",
  sha256  = "d4833a8d4feaf6046857ca529f3f00131df2282512f32134351dce4752e6c0de",
  deps    = { "glibc", "qtbase", "qtsvg" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libQt6Xdg.so.4")
  end,
}

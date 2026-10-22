return {
  name    = "qtsvg",
  version = "6.8.2",
  summary = "Qt 6 SVG libraries",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/qtsvg/qtsvg-6.8.2.tar.gz",
  sha256  = "0980ebae060b88cc097e03bd8cc203826bc943af65f04f324c3a366a10dff828",
  deps    = { "glibc", "libz", "qtbase", "xkbcommon" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libQt6Svg.so.6")
  end,
}

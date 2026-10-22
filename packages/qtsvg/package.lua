return {
  name    = "qtsvg",
  version = "6.8.2",
  summary = "Qt 6 SVG libraries",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/qtsvg/qtsvg-6.8.2.tar.gz",
  sha256  = "a3747e12d2e2e2aa10824e643956660447f216028cc5cee9c6cdaf26b616b89a",
  deps    = { "glibc", "libz", "qtbase", "xkbcommon" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libQt6Svg.so.6")
  end,
}

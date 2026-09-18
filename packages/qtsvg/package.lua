return {
  name    = "qtsvg",
  version = "6.8.2",
  summary = "Qt 6 SVG module",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/qtsvg/qtsvg-6.8.2.tar.gz",
  sha256  = "74ac97632fee9d05deb076c84eb5e90e35e1090b1f919da30a3b36b5bd88efbc",
  deps    = { "glibc", "libz", "qtbase", "xkbcommon" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libQt6Svg.so.6")
  end,
}

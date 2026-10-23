return {
  name    = "qtpositioning",
  version = "6.8.2",
  summary = "Qt 6 positioning (location/geoclue) module",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/qtpositioning/qtpositioning-6.8.2.tar.gz",
  sha256  = "25f398742fe927cd3e19bcf8cfa81b070327701028d2d6b482e1dad8d4b25bc1",
  deps    = { "glibc", "qtbase", "qtdeclarative" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libQt6Positioning.so.6 -o -e " .. p.install_root .. "/usr/lib64/libQt6Positioning.so.6")
  end,
}

return {
  name    = "qtdeclarative",
  version = "6.8.2",
  summary = "Qt6 QML/Quick modules",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/qtdeclarative/qtdeclarative-6.8.2.tar.gz",
  sha256  = "99e52bcd4fc8e2c05cb88a565961ca9b3ed1dadb906cd8ed870920ba49c66f3c",
  deps    = { "glibc", "qtbase", "qtsvg", "xkbcommon" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libQt6Qml.so.6")
  end,
}

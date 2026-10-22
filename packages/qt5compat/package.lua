return {
  name    = "qt5compat",
  version = "6.8.2",
  summary = "Qt 5 compatibility libraries for Qt 6",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/qt5compat/qt5compat-6.8.2.tar.gz",
  sha256  = "a960f18c9f12319a58ddbb2fe3794030dcb8c1be69b3e48611c91180ebe1e55f",
  deps    = { "glibc", "qtbase", "qtdeclarative" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libQt6Core5Compat.so.6")
  end,
}

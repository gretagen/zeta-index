return {
  name    = "qtwebsockets",
  version = "6.8.2",
  summary = "Qt 6 WebSockets module",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/qtwebsockets/qtwebsockets-6.8.2.tar.gz",
  sha256  = "e70055a0fe62cc5c87a47d053ace3c2faa07f379125e5488d6555fc839cc8c1a",
  deps    = { "glibc", "qtbase", "qtdeclarative" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libQt6WebSockets.so.6 -o -e " .. p.install_root .. "/usr/lib64/libQt6WebSockets.so.6")
  end,
}

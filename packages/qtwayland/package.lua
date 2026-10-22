return {
  name    = "qtwayland",
  version = "6.8.2",
  summary = "Qt 6 Wayland client libraries",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/qtwayland/qtwayland-6.8.2.tar.gz",
  sha256  = "86b6cdb1dc4cf479fcd42f089433e48efb8d0957d053917d99ba7f281f1b4af6",
  deps    = { "glibc", "qtbase", "qtsvg", "qtdeclarative", "wayland", "xkbcommon" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libQt6WaylandClient.so.6")
  end,
}

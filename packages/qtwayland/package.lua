return {
  name    = "qtwayland",
  version = "6.8.2",
  summary = "Qt6 Wayland platform plugin",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/qtwayland/qtwayland-6.8.2.tar.gz",
  sha256  = "bc4e0d77d9471adab73298dbd4ab14f60f96e57f03f9cf0f64236132717d5469",
  deps    = { "glibc", "qtbase", "qtsvg", "wayland", "xkbcommon" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/lib/cmake/Qt6WaylandClient")
  end,
}

return {
  name    = "kwayland",
  version = "6.3.6",
  summary = "KDE: KWayland provides a Qt-style Client and Server library wrapper for the Wayland libraries.",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kwayland/kwayland-6.3.6.tar.gz",
  sha256  = "9dac09e3262f4ed2dc528f1be92735c5df180aba7cf64b301109029da7cf439b",
  deps    = { "glibc", "qtbase", "gcc", "qtwayland", "plasma-wayland-protocols", "wayland", "wayland-protocols" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

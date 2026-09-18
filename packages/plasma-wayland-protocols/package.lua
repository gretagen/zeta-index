return {
  name    = "plasma-wayland-protocols",
  version = "1.17.0",
  summary = "KDE Wayland protocol XML (build-dep of kidletime)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/plasma-wayland-protocols/plasma-wayland-protocols-1.17.0.tar.gz",
  sha256  = "f18ed5c1cc4ee0072913f322b1afd0a3bcd2dea6325fdfb6cb60043d33e22faa",
  deps    = { "extra-cmake-modules", "wayland-protocols" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/lib/cmake/PlasmaWaylandProtocols")
  end,
}

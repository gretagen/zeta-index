return {
  name    = "kparts",
  version = "6.13.0",
  summary = "KDE: KParts",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kparts/kparts-6.13.0.tar.gz",
  sha256  = "87999f95248ac8d3a367b3d18806579e03e95d0d634642fb871ddec4038d007a",
  deps    = { "glibc", "qtbase", "gcc", "kio", "knotifications", "kxmlgui" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

return {
  name    = "qca",
  version = "2.3.12",
  summary = "KDE: Qt Cryptographic Architecture - straightforward cross-platform crypto API",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/qca/qca-2.3.12.tar.gz",
  sha256  = "0844849945578f8a2296a2eade980a9c897d0e1ca881ae58e570bf251e3ceea2",
  deps    = { "glibc", "qtbase", "gcc", "qt5compat", "libgcrypt" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

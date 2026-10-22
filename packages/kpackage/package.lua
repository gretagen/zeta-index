return {
  name    = "kpackage",
  version = "6.13.0",
  summary = "KDE: This framework lets applications to manage user installable packages of non-binary assets",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kpackage/kpackage-6.13.0.tar.gz",
  sha256  = "65e989514762d6b52ad250f89abb36869fdeb330ebc5e9f3b1b3ef40a274a54d",
  deps    = { "glibc", "qtbase", "gcc", "karchive", "kcoreaddons", "kdoctools", "ki18n" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

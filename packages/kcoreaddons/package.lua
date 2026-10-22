return {
  name    = "kcoreaddons",
  version = "6.13.0",
  summary = "KDE: KCoreAddons",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kcoreaddons/kcoreaddons-6.13.0.tar.gz",
  sha256  = "da9fd17b6c423af1f6f2ea226bba06ee13b9d69f795eb80c2f2a534a846beecf",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

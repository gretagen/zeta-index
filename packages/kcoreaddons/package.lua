return {
  name    = "kcoreaddons",
  version = "6.24.0",
  summary = "KDE: KCoreAddons",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kcoreaddons/kcoreaddons-6.24.0.tar.gz",
  sha256  = "a4f1f3418435cffeaeb2922852f419c312656f7d4f0bee4df16c7b9d1e19f242",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

return {
  name    = "kitemmodels",
  version = "6.13.0",
  summary = "KDE: KItemModels",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kitemmodels/kitemmodels-6.13.0.tar.gz",
  sha256  = "56c9d9cdbd644b414bfccbc136655df1d6a2e0c010bbf2357315cd23ef8aef92",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

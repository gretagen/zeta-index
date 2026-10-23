return {
  name    = "kdeclarative",
  version = "6.13.0",
  summary = "KDE: KDeclarative",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kdeclarative/kdeclarative-6.13.0.tar.gz",
  sha256  = "8949f5b71f714bddce293ede7fd4459d55868e0ad226403be7ff9279e7f6796a",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative", "qtshadertools", "kconfig", "kglobalaccel", "kguiaddons", "ki18n", "kwidgetsaddons" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

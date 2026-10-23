return {
  name    = "kirigami-addons",
  version = "1.9.0",
  summary = "KDE: Add-ons for the Kirigami framework",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kirigami-addons/kirigami-addons-1.9.0.tar.gz",
  sha256  = "0e79a6134894d45dc63f98dea8cc74ebe5eb0f798f168f13390973daded47f0d",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative", "qtsvg", "kcolorscheme", "kconfig", "kcoreaddons", "kcrash", "kglobalaccel", "kguiaddons", "ki18n", "kiconthemes", "kirigami" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

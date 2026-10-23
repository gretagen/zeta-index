return {
  name    = "breeze",
  version = "6.3.6",
  summary = "KDE: Artwork, styles and assets for the Breeze visual style for the Plasma Desktop",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/breeze/breeze-6.3.6.tar.gz",
  sha256  = "6912c659ffa5606a22b4769b66d11643100bae87b476a74ebcdccccbafce428b",
  deps    = { "glibc", "qtbase", "gcc", "qtsvg", "qtdeclarative", "frameworkintegration", "kcmutils", "kcolorscheme", "kconfig", "kcoreaddons", "kguiaddons", "ki18n", "kiconthemes", "kirigami", "kwindowsystem", "kdecoration" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

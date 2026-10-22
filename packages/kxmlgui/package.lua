return {
  name    = "kxmlgui",
  version = "6.13.0",
  summary = "KDE: KXMLGUI",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kxmlgui/kxmlgui-6.13.0.tar.gz",
  sha256  = "6b97c87f9eb9503948fe21b12b41a93c15912b3dd23f06fcee95322a2446b129",
  deps    = { "glibc", "qtbase", "gcc", "kconfig", "kconfigwidgets", "kglobalaccel", "ki18n", "kiconthemes", "kitemviews", "ktextwidgets", "kwidgetsaddons" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

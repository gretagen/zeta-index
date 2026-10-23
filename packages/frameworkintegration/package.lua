return {
  name    = "frameworkintegration",
  version = "6.13.0",
  summary = "KDE: Framework providing components to allow applications to integrate with a KDE Workspace",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/frameworkintegration/frameworkintegration-6.13.0.tar.gz",
  sha256  = "136fd0d7927b2e409466311f0e887d939f765559610e9224a3853ac33fc75f5a",
  deps    = { "glibc", "qtbase", "gcc", "kcolorscheme", "kconfig", "kconfigwidgets", "kguiaddons", "ki18n", "kiconthemes", "kio", "kitemviews", "knewstuff", "knotifications", "kpackage", "kwidgetsaddons", "oxygen-icons" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

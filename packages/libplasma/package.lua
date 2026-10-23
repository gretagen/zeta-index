return {
  name    = "libplasma",
  version = "6.3.6",
  summary = "KDE: Plasma library and runtime components",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libplasma/libplasma-6.3.6.tar.gz",
  sha256  = "051a874e775429701433b6dd1152741ebb8c61a17b82fef699e52c35c6812e32",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative", "qtsvg", "qtwayland", "karchive", "kcolorscheme", "kconfig", "kcoreaddons", "kdbusaddons", "kglobalaccel", "kguiaddons", "ki18n", "kiconthemes", "kio", "kirigami", "knotifications", "kpackage", "kparts", "ksvg", "kwidgetsaddons", "kwindowsystem", "plasma-activities", "kcmutils" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

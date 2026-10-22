return {
  name    = "kiconthemes",
  version = "6.13.0",
  summary = "KDE: KIconThemes",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kiconthemes/kiconthemes-6.13.0.tar.gz",
  sha256  = "a48350117243d589d1b6c4d35938af58bc095e41062a8dd7557f0bec3f433ae2",
  deps    = { "glibc", "qtbase", "gcc", "qtsvg", "qtdeclarative", "breeze-icons", "karchive", "kcolorscheme", "kconfig", "ki18n", "kwidgetsaddons" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

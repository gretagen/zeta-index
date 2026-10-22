return {
  name    = "kconfigwidgets",
  version = "6.13.0",
  summary = "KDE: Widgets for KConfig",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kconfigwidgets/kconfigwidgets-6.13.0.tar.gz",
  sha256  = "d9272d5f306d7402b93f2d9ac97cf0e6bed498dfe699bb4efee687267b7eb338",
  deps    = { "glibc", "qtbase", "gcc", "kcodecs", "kcolorscheme", "kconfig", "kcoreaddons", "kguiaddons", "ki18n", "kwidgetsaddons" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

return {
  name    = "kio",
  version = "6.13.0",
  summary = "KDE: KIO",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kio/kio-6.13.0.tar.gz",
  sha256  = "195698846327aa61b8247654b98ad4ef0ca98151b3a731a0ff5ebf57ddbcf97d",
  deps    = { "glibc", "qtbase", "gcc", "karchive", "kbookmarks", "kcolorscheme", "kcompletion", "kconfig", "kcoreaddons", "kcrash", "kdbusaddons", "kdoctools", "kguiaddons", "ki18n", "kiconthemes", "kitemviews", "kjobwidgets", "knotifications", "kservice", "kwallet", "kwidgetsaddons", "kwindowsystem", "solid", "kauth", "acl", "attr" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

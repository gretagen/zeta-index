return {
  name    = "knewstuff",
  version = "6.13.0",
  summary = "KDE: KNewStuff",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/knewstuff/knewstuff-6.13.0.tar.gz",
  sha256  = "3b63e42a768e914130b2c6ef2cf1e3156cbebb7f53470f82a5088ac425b4b60a",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative", "attica", "karchive", "kconfig", "kcoreaddons", "ki18n", "kirigami", "kpackage", "kwidgetsaddons", "syndication" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

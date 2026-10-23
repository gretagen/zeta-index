return {
  name    = "kcmutils",
  version = "6.13.0",
  summary = "KDE: Utilities for interacting with KCModules",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kcmutils/kcmutils-6.13.0.tar.gz",
  sha256  = "33a2e25a6cf9534c75b9a8046c37ce36a8e7e60bf3defd97a06f4e8dd0910b15",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative", "kcoreaddons", "ki18n", "kio", "kirigami", "kitemviews", "kxmlgui" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

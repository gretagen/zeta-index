return {
  name    = "kservice",
  version = "6.13.0",
  summary = "KDE: KService",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kservice/kservice-6.13.0.tar.gz",
  sha256  = "dea543b019e167297d9a9bdfe7b86a19f21cc285b3cac40dfb28545c315c3861",
  deps    = { "glibc", "qtbase", "gcc", "kconfig", "kcoreaddons", "kdoctools", "ki18n" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

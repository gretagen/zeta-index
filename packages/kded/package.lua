return {
  name    = "kded",
  version = "6.13.0",
  summary = "KDE: KDE Daemon",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kded/kded-6.13.0.tar.gz",
  sha256  = "7f6161da458208db04c13e8094f611dd256bb527bdd391e9a1849e2bc7610aa4",
  deps    = { "glibc", "qtbase", "gcc", "kcoreaddons", "kcrash", "kdbusaddons", "kdoctools", "ki18n", "kservice" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

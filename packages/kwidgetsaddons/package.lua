return {
  name    = "kwidgetsaddons",
  version = "6.24.0",
  summary = "KDE: KWidgetsAddons",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kwidgetsaddons/kwidgetsaddons-6.24.0.tar.gz",
  sha256  = "de67403080aaf607ffbe4238e8f387963c12fd807b260244e1f645d37c26df28",
  deps    = { "glibc", "qtbase", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

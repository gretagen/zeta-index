return {
  name    = "kauth",
  version = "6.13.0",
  summary = "KDE: KAuth",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kauth/kauth-6.13.0.tar.gz",
  sha256  = "df4c1be26072174f7678945d4bde150c96297a8cdf1817cb914141fe338bbfe3",
  deps    = { "glibc", "qtbase", "gcc", "kcoreaddons", "kwindowsystem", "polkit-qt-1" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

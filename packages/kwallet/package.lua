return {
  name    = "kwallet",
  version = "6.13.0",
  summary = "KDE: KWallet: Credential Storage",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kwallet/kwallet-6.13.0.tar.gz",
  sha256  = "ebd933302e0cedf96f0ffb423201e30ea42c7983d8ddae24f4783d4c0957812b",
  deps    = { "glibc", "qtbase", "gcc", "kcolorscheme", "kconfig", "kcoreaddons", "kcrash", "kdbusaddons", "ki18n", "kiconthemes", "knotifications", "kwidgetsaddons", "kwindowsystem", "qca" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

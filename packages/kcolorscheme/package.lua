return {
  name    = "kcolorscheme",
  version = "6.13.0",
  summary = "KDE: Classes to read and interact with KColorScheme",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kcolorscheme/kcolorscheme-6.13.0.tar.gz",
  sha256  = "524c445638933a82c1055716977c044900bc4f27247c1ddbac1e89ed6487af71",
  deps    = { "glibc", "qtbase", "gcc", "kconfig", "kguiaddons", "ki18n" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

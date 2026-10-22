return {
  name    = "kcompletion",
  version = "6.13.0",
  summary = "KDE: KCompletion",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kcompletion/kcompletion-6.13.0.tar.gz",
  sha256  = "90a2328e77b2899a7b8f133b2e7b814ae58dfda1f741e50278ba03d3d2794fc0",
  deps    = { "glibc", "qtbase", "gcc", "kcodecs", "kconfig", "kwidgetsaddons" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

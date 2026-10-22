return {
  name    = "kconfig",
  version = "6.24.0",
  summary = "KDE: KConfig",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kconfig/kconfig-6.24.0.tar.gz",
  sha256  = "890c8c7e55c5637706e9b5d2996d5d3faa1136fd4ff9935e289cb0b9172f886c",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

return {
  name    = "kconfig",
  version = "6.13.0",
  summary = "KDE: KConfig",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kconfig/kconfig-6.13.0.tar.gz",
  sha256  = "2036cc423839ce3763eb1d439e5cef24bc1f4812feb53fd713de098a5dea7d59",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

return {
  name    = "baloo",
  version = "6.13.0",
  summary = "KDE: Baloo is a framework for searching and managing metadata.",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/baloo/baloo-6.13.0.tar.gz",
  sha256  = "f1f6e6bceb089077d6840c0a854012385c68272e6cdb5ccbfaafa2900e53ef3a",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative", "kconfig", "kcoreaddons", "kcrash", "kdbusaddons", "kfilemetadata", "ki18n", "kidletime", "kio", "solid", "lmdb" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

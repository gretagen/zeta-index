return {
  name    = "baloo",
  version = "6.13.0",
  summary = "KDE: Baloo is a framework for searching and managing metadata.",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/baloo/baloo-6.13.0.tar.gz",
  sha256  = "47c6891e22f022f9f43c0fc87c4f58298c8c9fa29db8eff10515d0e7ac365947",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative", "kconfig", "kcoreaddons", "kcrash", "kdbusaddons", "kfilemetadata", "ki18n", "kidletime", "kio", "solid", "lmdb" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

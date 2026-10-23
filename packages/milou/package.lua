return {
  name    = "milou",
  version = "6.3.6",
  summary = "KDE: A dedicated search application built on top of Baloo",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/milou/milou-6.3.6.tar.gz",
  sha256  = "12a909b83f4c4edfe9214f2733980d294b0f0a23e245ed5fbca4189deccbb057",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative", "kconfig", "ki18n", "krunner", "libplasma" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

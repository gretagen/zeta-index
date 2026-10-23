return {
  name    = "libksysguard",
  version = "6.3.6",
  summary = "KDE: Library to retrieve information on the current status of computer hardware",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libksysguard/libksysguard-6.3.6.tar.gz",
  sha256  = "90f7cbb52c5b429745d9ecc2974e790ba61a84fddf5396f514a5ceb7bef2d8b8",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative", "kauth", "kconfig", "kcoreaddons", "ki18n", "knewstuff", "kpackage", "kservice", "solid" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

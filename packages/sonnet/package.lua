return {
  name    = "sonnet",
  version = "6.13.0",
  summary = "KDE: Spelling framework for Qt.",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/sonnet/sonnet-6.13.0.tar.gz",
  sha256  = "5c3cbe773bbfd8ee3958f473500dae938bd47565cf5415d69c5167afdfa8e9c3",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative", "hunspell" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

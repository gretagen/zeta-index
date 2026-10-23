return {
  name    = "syntax-highlighting",
  version = "6.13.0",
  summary = "KDE: Syntax highlighting Engine for Structured Text and Code.",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/syntax-highlighting/syntax-highlighting-6.13.0.tar.gz",
  sha256  = "df3608bc051928c2759f1561544127d2886c2ddb79e86a0d0b816871375e7602",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}

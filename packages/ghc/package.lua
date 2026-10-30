return {
  name    = "ghc",
  version = "9.6.7-3-x86_64",
  summary = "the Glasgow Haskell Compiler",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/ghc/ghc-9.6.7-3-x86_64.pkg.tar.zst",
  sha256  = "070e544b38a2242fd22dbf9b7400eb392bdc6ad370482f309e50bfc69e17f5bb",
  deps    = { "gcc", "ghc-libs", "perl" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libHSghc-9.6.7-ghc9.6.7.so")
  end,
}

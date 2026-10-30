return {
  name    = "haskell-setlocale",
  version = "1.0.0.10-8-x86_64",
  summary = "haskell bindings to setlocale",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/haskell-setlocale/haskell-setlocale-1.0.0.10-8-x86_64.pkg.tar.zst",
  sha256  = "765049c371e58d1a92642f3c81818980c0b2312fd5045c9fc35d0ed42ad174c9",
  deps    = { "ghc-libs" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libHSsetlocale-1.0.0.10-JAuPRy1ikeF18rXjiUqy0W-ghc9.6.7.so")
  end,
}

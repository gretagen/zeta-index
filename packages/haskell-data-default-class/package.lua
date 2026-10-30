return {
  name    = "haskell-data-default-class",
  version = "0.1.2.2-4-x86_64",
  summary = "a class for types with a default value",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/haskell-data-default-class/haskell-data-default-class-0.1.2.2-4-x86_64.pkg.tar.zst",
  sha256  = "d6af4e2098d19de9ea97ff8b29bfaa142fff2b884956505465c97f6e6a3ae59d",
  deps    = { "ghc-libs" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libHSdata-default-class-0.1.2.2-25gAM82RrwXGN749A1StTw-ghc9.6.7.so")
  end,
}

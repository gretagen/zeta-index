return {
  name    = "ghc-libs",
  version = "9.6.7-3-x86_64",
  summary = "the Glasgow Haskell Compiler - Dynamic Libraries",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/ghc-libs/ghc-libs-9.6.7-3-x86_64.pkg.tar.zst",
  sha256  = "5bb33688f41165f8ef3a4ee68301c3c97e312591fc70ce0cdfe2854cf5480ba4",
  deps    = { "gmp", "libffi", "numactl" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libHSCabal-3.10.3.0-ghc9.6.7.so")
  end,
}

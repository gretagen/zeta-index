return {
  name    = "gmp",
  version = "10.5.0-2",
  summary = "GNU multiple precision arithmetic",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gmp/gmp-10.5.0-2.tar.gz",
  sha256  = "8b2196b3dc07a38a41899daaecd58c46ea600d1fa351bee096c109e1d01d615a",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/include/gmp.h && test -f " .. p.install_root .. "/usr/lib/pkgconfig/gmp.pc && test -f " .. p.install_root .. "/usr/lib/libgmp.so.10")
  end,
}

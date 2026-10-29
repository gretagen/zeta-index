return {
  name    = "libmpc",
  version = "1.3.1",
  summary = "GNU Multiple Precision Complex Library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libmpc/libmpc-1.3.1.tar.gz",
  sha256  = "0bf27f364b7dca3711f9b6225752571569f237f77351191029a40004312bccc0",
  deps    = { "mpfr", "glibc", "gmp" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/include/mpc.h && test -e " .. p.install_root .. "/usr/lib/libmpc.so")
  end,
}

return {
  name    = "mpc",
  version = "1.3.1",
  summary = "GNU Multiple Precision Complex Library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mpc/mpc-1.3.1.tar.gz",
  sha256  = "5519cd6f0afdc443d77a680b86afafeb769e8de9557c1cd10ce61d7d556520e9",
  deps    = { "glibc", "gmp", "mpfr" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libmpc.so")
  end,
}

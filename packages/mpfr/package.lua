return {
  name    = "mpfr",
  version = "4.2.1",
  summary = "GNU multiple-precision floating-point rounding library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mpfr/mpfr-4.2.1.tar.gz",
  sha256  = "b40699cc1844a2a9e2a1cfdfa7d231464c1501343b7ae4435b6e19281d175d15",
  deps    = { "glibc", "gmp" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libmpfr.so.6")
  end,
}

return {
  name    = "gmp",
  version = "10.5.0",
  summary = "GNU multiple precision arithmetic",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gmp/gmp-10.5.0.tar.gz",
  sha256  = "ac922e0534f4c054359338c605aa0eef21058d012e12ca138bc62dea39895939",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libgmp.so.10")
  end,
}

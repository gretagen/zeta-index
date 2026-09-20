return {
  name    = "libmpc",
  version = "1.4.1",
  summary = "Library for the arithmetic of complex numbers with arbitrarily high precision",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libmpc/libmpc.pkg.tar.zst",
  sha256  = "880bdba957ebe5136449c7b61821e92628d7bdd43f370e5a0818d229372d3851",
  deps    = { "gmp", "mpfr", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}

return {
  name    = "libquadmath",
  version = "16.2.1+r23+gd564253eb6c8",
  summary = "GCC __float128 library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libquadmath/libquadmath.pkg.tar.zst",
  sha256  = "c6db8f6c787601f17fa812f2270f4e53fad1426fa9e372ab2e1a881c1368cee3",
  deps    = { "libgcc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}

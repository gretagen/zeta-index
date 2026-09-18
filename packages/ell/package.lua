return {
  name    = "ell",
  version = "0.83",
  summary = "Embedded Linux Library (used by iwd)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/ell/ell-0.83.tar.gz",
  sha256  = "fc312655f84d5bedb258e213aa8797205dd21c8afd571457e896e784ea93bb1f",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libell.so.0")
  end,
}

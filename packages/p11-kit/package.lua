return {
  name    = "p11-kit",
  version = "0.4.8",
  summary = "PKCS#11 module loading library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/p11-kit/p11-kit-0.4.8.tar.gz",
  sha256  = "c79ad68280e000dc4c8aa2e95ff9c7cf373abca1bf03a6b375d3203d9ef81555",
  deps    = { "glibc", "libffi" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libp11-kit.so.0")
  end,
}

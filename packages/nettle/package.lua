return {
  name    = "nettle",
  version = "1.0",
  summary = "Cryptographic library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/nettle/nettle-1.0.tar.gz",
  sha256  = "58021b9509e2ac6ce2e6708e7cdd975e6269de98a0cc5e15d69f74e80ae7ffef",
  deps    = { "glibc", "gmp" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libnettle.so.9")
  end,
}

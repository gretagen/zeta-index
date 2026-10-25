return {
  name    = "nettle",
  version = "1.0-2",
  summary = "Cryptographic library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/nettle/nettle-1.0-2.tar.gz",
  sha256  = "c1a0e824460fa0094b70db1be1a8f63a68b703eca83a02c980dadd1df9c96efb",
  deps    = { "glibc", "gmp" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libnettle.so.9* >/dev/null && ls " .. p.install_root .. "/usr/lib/libhogweed.so.7* >/dev/null && test -f " .. p.install_root .. "/usr/lib/pkgconfig/nettle.pc && test -f " .. p.install_root .. "/usr/include/nettle/nettle-meta.h && test -x " .. p.install_root .. "/usr/bin/nettle-hash")
  end,
}

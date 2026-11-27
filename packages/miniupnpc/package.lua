return {
  name    = "miniupnpc",
  version = "2.3.5",
  summary = "UPnP IGD client library (port forwarding helper)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/miniupnpc/miniupnpc-2.3.5.tar.gz",
  sha256  = "a8129ea8e41671ea235a18e2573efc9655b8491d6cfb10f00710b255ea0f23f0",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libminiupnpc.so* | grep -q libminiupnpc && test -f " .. p.install_root .. "/usr/lib/pkgconfig/miniupnpc.pc && test -d " .. p.install_root .. "/usr/include/miniupnpc && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/lib/pkgconfig pkg-config --modversion miniupnpc | grep -q 2.3")
  end,
}

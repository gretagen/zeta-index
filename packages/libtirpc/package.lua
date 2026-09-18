return {
  name    = "libtirpc",
  version = "1.3.6",
  summary = "Transport Independent RPC library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libtirpc/libtirpc-1.3.6.tar.gz",
  sha256  = "0c3f1ddc67d3f89c402906e61b411eaf21881d3c69decc1cb42af6f651d8b9cf",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libtirpc.so.3 && readelf -d " .. p.install_root .. "/usr/lib/libtirpc.so.3 | grep -q 'libtirpc.so.3'")
  end,
}

return {
  name    = "libndp",
  version = "1.9",
  summary = "IPv6 Neighbor Discovery protocol library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libndp/libndp-1.9.tar.gz",
  sha256  = "ef66bd6fcaac237e1edf4c124d752d675854427e0fbe0fb3c482576216c84cc6",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libndp.so.0")
  end,
}

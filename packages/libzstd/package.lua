return {
  name    = "libzstd",
  version = "1.5.7",
  summary = "Zstandard - Fast real-time compression algorithm",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libzstd/libzstd-1.5.7.tar.gz",
  sha256  = "11ac7880e972400ee523bd93cdb2192d847e1d45dde0c1cc5e8ab4680eca4f54",
  deps    = { "glibc", "libz", "xz-utils", "lz4" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libzstd.so")
  end,
}

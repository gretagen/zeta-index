return {
  name    = "lz4",
  version = "1.10.0",
  summary = "LZ4 compression library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lz4/lz4-1.10.0.tar.gz",
  sha256  = "46890ac6a6db7813666d750cdd231fbc07d0d134e95bb0a15239aa8254dae120",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/liblz4.so.1")
  end,
}

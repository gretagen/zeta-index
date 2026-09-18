return {
  name    = "faad2",
  version = "2.11.2",
  summary = "AAC decoder library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/faad2/faad2-2.11.2.tar.gz",
  sha256  = "5376088b8ee0844c1ed9c408a7bfff4ff39d1f38708cd9d764424d991d9bdf3f",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libfaad.so.2")
  end,
}

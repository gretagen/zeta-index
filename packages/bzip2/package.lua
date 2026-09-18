return {
  name    = "bzip2",
  version = "1.0.8",
  summary = "bzip2 compression library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/bzip2/bzip2-1.0.8.tar.gz",
  sha256  = "362b341dc68847496770083c12266b2c7eab001a33d3bce2e3d0991626a940fc",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libbz2.so.1.0")
  end,
}

return {
  name    = "libtdb",
  version = "1.4.12",
  summary = "Trivial database (key-value store) library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libtdb/libtdb-1.4.12.tar.gz",
  sha256  = "7d7e4fe4eb5a6bb151211c77b9d1b9af8e65b8791ed9dbcd962b5213ba2b370e",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr/lib -name 'libtdb*.so*' | grep -q .")
  end,
}

return {
  name    = "libgc",
  version = "8.2.12",
  summary = "Boehm-Demers-Weiser conservative garbage collector (bdwgc)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libgc/libgc-8.2.12.tar.gz",
  sha256  = "487b4cfb538f058fee59105253b9bb89530c77880cf8c4d82dbcd3822b265bfc",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libgc.so.1 || test -f " .. p.install_root .. "/usr/lib64/libgc.so.1")
  end,
}

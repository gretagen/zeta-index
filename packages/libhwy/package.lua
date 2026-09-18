return {
  name    = "libhwy",
  version = "1.2.0",
  summary = "Google Highway SIMD library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libhwy/libhwy-1.2.0.tar.gz",
  sha256  = "3e5ae0e2bd12a572c2667504a4fe8b8585c617c5f7028489bcc549ed68d208cc",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libhwy.so.1")
  end,
}

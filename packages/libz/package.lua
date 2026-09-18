return {
  name    = "libz",
  version = "1.3.2",
  summary = "Zlib compression library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libz/libz-1.3.2.tar.gz",
  sha256  = "3d8f59d845bce55c1203b4bfe9e38ccade5e333532feffc0fda1b61868a86226",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libz.so.1.3.2 && nm -D --defined-only " .. p.install_root .. "/usr/lib/libz.so.1.3.2 | grep -q zlibVersion")
  end,
}

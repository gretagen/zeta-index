return {
  name    = "libpng",
  version = "1.6.47",
  summary = "PNG image format library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libpng/libpng-1.6.47.tar.gz",
  sha256  = "c1097481107021a09d4d1790221ccff991a56c88b7a1451d1f47bb5b96967d8b",
  deps    = { "glibc", "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libpng16.so.16 && readelf -d " .. p.install_root .. "/usr/lib/libpng16.so.16 | grep -q 'libpng16.so.16'")
  end,
}

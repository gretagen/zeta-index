return {
  name    = "libhwy",
  version = "1.2.0",
  summary = "Google Highway SIMD library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libhwy/libhwy-1.2.0.tar.gz",
  sha256  = "37426e67a26ff0996e1fcfcdd02ce057e039fd3b4ea75ce1a27396220d8a50d3",
  deps    = { "glibc", "gcc", "libgcc", "libstdc++" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libhwy.so.1 && test -f " .. p.install_root .. "/usr/include/hwy/highway.h && test -f " .. p.install_root .. "/usr/lib/pkgconfig/libhwy.pc")
  end,
}

return {
  name    = "jemalloc",
  version = "5.4.0",
  summary = "Scalable malloc implementation",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/jemalloc/jemalloc-5.4.0.tar.gz",
  sha256  = "e90f24e07b9d59d3cc6573e3d4e79491ee633943c4f2dc0fb547565786b33acf",
  deps    = { "glibc", "gcc", "libgcc", "libstdc++" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libjemalloc.so.2 && test -f " .. p.install_root .. "/usr/lib/pkgconfig/jemalloc.pc")
  end,
}

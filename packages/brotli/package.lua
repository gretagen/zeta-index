return {
  name    = "brotli",
  version = "1.2.0",
  summary = "Brotli compression library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/brotli/brotli-1.2.0.tar.gz",
  sha256  = "8cc76450391bc4d78e6a30913dc338622360a1e947a0bfbefd04ff935284efac",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libbrotlienc.so.1 && test -f " .. p.install_root .. "/usr/include/brotli/encode.h && test -f " .. p.install_root .. "/usr/lib/pkgconfig/libbrotlienc.pc && test -x " .. p.install_root .. "/usr/bin/brotli")
  end,
}

return {
  name    = "brotli",
  version = "1.2.0",
  summary = "Brotli compression library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/brotli/brotli-1.2.0.tar.gz",
  sha256  = "dae9f9c76df44387c6d923cd864dbffcec7f8b846268a780471f0022a527e887",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libbrotlienc.so.1")
  end,
}

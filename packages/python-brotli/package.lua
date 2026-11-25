return {
  name    = "python-brotli",
  version = "1.2.1",
  summary = "Brotli compression library (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-brotli/python-brotli-1.2.1.tar.gz",
  sha256  = "64eef9b063b3317f6f05397fd3c661e50844ae23389733517b8e33ae26b02e08",
  deps    = { "python", "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import brotli; assert brotli.compress(b'zeta') and brotli.decompress(brotli.compress(b'zeta')) == b'zeta'\"")
  end,
}

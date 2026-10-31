return {
  name    = "python-iterable-io",
  version = "1.0.4",
  summary = "Adapt generators to file-like objects (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-iterable-io/python-iterable-io-1.0.4.tar.gz",
  sha256  = "013413012ca099bef11708c7f270dbdbde8f0f086cb93c63f90328fd7d14deaa",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import iterableio\"")
  end,
}

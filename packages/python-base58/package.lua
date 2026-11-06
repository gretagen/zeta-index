return {
  name    = "python-base58",
  version = "2.1.1",
  summary = "Base58 and Base58Check encoding (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-base58/python-base58-2.1.1.tar.gz",
  sha256  = "15be4c0154f0204e574cfeb795a1368d37626a2857ea637485e4f7571d811d25",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import base58\"")
  end,
}

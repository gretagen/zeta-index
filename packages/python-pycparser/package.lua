return {
  name    = "python-pycparser",
  version = "3.12",
  summary = "Pure Python C parser (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-pycparser/python-pycparser-3.12.tar.gz",
  sha256  = "bda8958f16db3741f003f1cf25a9fbeda0347b80e40faa6ea2d6ac1663087352",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import pycparser; pycparser.CParser()\"")
  end,
}

return {
  name    = "python-attrs",
  version = "26.1.0",
  summary = "Classes without boilerplate (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-attrs/python-attrs-26.1.0.tar.gz",
  sha256  = "25958d9a7896f5b6e74b976a49d278ff95d762f973c65e3fc600b07278e7f887",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import attrs\"")
  end,
}

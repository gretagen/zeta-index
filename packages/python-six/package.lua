return {
  name    = "python-six",
  version = "1.17.0",
  summary = "Python 2 and 3 compatibility library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-six/python-six-1.17.0.tar.gz",
  sha256  = "d31f533cab4db0602730fc6d7665c2e4da73ae80c960ee4ac654a2888fc8fe8d",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import six\"")
  end,
}

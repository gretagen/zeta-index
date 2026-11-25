return {
  name    = "python-six",
  version = "1.17.0",
  summary = "Python 2 and 3 compatibility helpers (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-six/python-six-1.17.0.tar.gz",
  sha256  = "bae77e5df157af9eaf88c3373bef114b43f90024a09dbd6357067634218acab6",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import six; assert six.PY3\"")
  end,
}

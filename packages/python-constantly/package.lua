return {
  name    = "python-constantly",
  version = "23.10.4",
  summary = "Symbolic constants in Python (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-constantly/python-constantly-23.10.4.tar.gz",
  sha256  = "81b5a72fdc52dc138da1abcd33f64aa3c843430014cb151a3a225a8f7f2237a3",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import constantly\"")
  end,
}

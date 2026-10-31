return {
  name    = "python-importlib-metadata",
  version = "10.1.0",
  summary = "Read metadata from Python packages (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-importlib-metadata/python-importlib-metadata-10.1.0.tar.gz",
  sha256  = "e563a35e837935428eb04c811ac4cbaf2757d16b1d30a4c0b85d383d1a61b1f4",
  deps    = { "python", "python-zipp" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import importlib_metadata\"")
  end,
}

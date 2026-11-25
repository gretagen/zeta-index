return {
  name    = "python-certifi",
  version = "2026.10.23",
  summary = "Mozilla CA certificate bundle for Python (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-certifi/python-certifi-2026.10.23.tar.gz",
  sha256  = "248cce78220568b39957817c5922efc4f9f78c9a525d21c4ff7ab30875e9265f",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import certifi; assert certifi.where().endswith('cacert.pem')\"")
  end,
}

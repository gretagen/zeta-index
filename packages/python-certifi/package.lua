return {
  name    = "python-certifi",
  version = "2026.10.23",
  summary = "Mozilla CA bundle for Python (certifi)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-certifi/python-certifi-2026.10.23.tar.gz",
  sha256  = "dfbd2879a1282a7f40eb896ae607b0cba1580c1efe4149c165c9bc38d3fbe69d",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import certifi\"")
  end,
}

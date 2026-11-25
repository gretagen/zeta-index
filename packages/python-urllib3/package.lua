return {
  name    = "python-urllib3",
  version = "2.8.0",
  summary = "HTTP client library (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-urllib3/python-urllib3-2.8.0.tar.gz",
  sha256  = "02f0682acb9e2da77e6667d480205a62ae5c1558b1ea10d476deaf6f4bab48e9",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import urllib3; assert urllib3.__version__ == '2.8.0'\"")
  end,
}

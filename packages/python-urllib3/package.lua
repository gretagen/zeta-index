return {
  name    = "python-urllib3",
  version = "2.8.0",
  summary = "HTTP library with connection pooling for Python (urllib3)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-urllib3/python-urllib3-2.8.0.tar.gz",
  sha256  = "591b05868876f161b4d7fca5c1ff3c8eda316c071a9d17562aae14653ee72040",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import urllib3\"")
  end,
}

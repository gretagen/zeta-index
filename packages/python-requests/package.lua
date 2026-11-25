return {
  name    = "python-requests",
  version = "2.34.2",
  summary = "HTTP library for humans (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-requests/python-requests-2.34.2.tar.gz",
  sha256  = "4d68a6eb52bf99848850a57acbb8a3c70a86ab489b2ad69a504943d08f129c09",
  deps    = { "python", "python-certifi", "python-charset-normalizer", "python-idna", "python-urllib3" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import requests; assert requests.__version__ == '2.34.2'; import certifi, charset_normalizer, idna, urllib3\"")
  end,
}

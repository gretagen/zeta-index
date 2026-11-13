return {
  name    = "python-requests",
  version = "2.34.2",
  summary = "HTTP library for humans (requests)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-requests/python-requests-2.34.2.tar.gz",
  sha256  = "9672b5029cbc153e224fa7535c187fb8486716bde9f97665fdfa009288516eb6",
  deps    = { "python", "python-certifi", "python-charset-normalizer", "python-idna", "python-urllib3" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import requests\"")
  end,
}

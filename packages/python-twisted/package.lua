return {
  name    = "python-twisted",
  version = "26.10.0",
  summary = "Event-driven networking engine (Twisted) (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-twisted/python-twisted-26.10.0.tar.gz",
  sha256  = "4294a9f37c04c1da6aaca1e86be7ac76c424717ce16a1a88dd9364aea138cbdf",
  deps    = { "python", "python-attrs", "python-automat", "python-constantly", "python-hyperlink", "python-incremental", "python-typing_extensions", "python-zope-interface" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import twisted\"")
  end,
}

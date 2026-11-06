return {
  name    = "python-autobahn",
  version = "26.7.1",
  summary = "WebSocket and WAMP library (Autobahn) (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-autobahn/python-autobahn-26.7.1.tar.gz",
  sha256  = "0cd3599de6d41f1818a352cb2f0e934540de6bfb45aead8342bf5edb40d154a7",
  deps    = { "python", "glibc", "python-base58", "python-cffi", "python-cryptography", "python-hyperlink", "python-twisted", "python-txaio", "python-wsaccel", "python-zope-interface" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import autobahn\"")
  end,
}

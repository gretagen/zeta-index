return {
  name    = "python-txtorcon",
  version = "24.8.0",
  summary = "Twisted-based Tor controller client (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-txtorcon/python-txtorcon-24.8.0.tar.gz",
  sha256  = "4c882df20c5dc4f1527ab52fb804f22adb321cb773a165c5de5d0f68d38c109e",
  deps    = { "python", "python-automat", "python-cryptography", "python-geoip", "python-idna", "python-pyopenssl", "python-service-identity", "python-twisted", "python-zope-interface" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import txtorcon\"")
  end,
}

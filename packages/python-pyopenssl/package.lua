return {
  name    = "python-pyopenssl",
  version = "26.4.0",
  summary = "Python wrapper around OpenSSL (pyOpenSSL)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-pyopenssl/python-pyopenssl-26.4.0.tar.gz",
  sha256  = "fc0a14c38ada875e0f0e6caeb02217f33ec6e00903463802c66f36259cb15409",
  deps    = { "python", "python-cryptography" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import OpenSSL\"")
  end,
}

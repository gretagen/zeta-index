return {
  name    = "python-pycryptodomex",
  version = "3.24.2",
  summary = "Cryptographic library (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-pycryptodomex/python-pycryptodomex-3.24.2.tar.gz",
  sha256  = "00174e2623a7027f2fb1bfe3412624893dcb1b34239aaff6983b12dfe26814ec",
  deps    = { "python", "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"from Cryptodome import __version__; assert __version__.startswith('3.24')\"")
  end,
}

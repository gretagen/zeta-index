return {
  name    = "python-openssl",
  version = "26.4.0",
  summary = "Python wrapper around OpenSSL (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-openssl/python-openssl-26.4.0.tar.gz",
  sha256  = "e10d3fc72da08411d0a5cbe7969f20d8c8c1755f938f8d3c3c998ac3be5cc297",
  deps    = { "python", "python-cryptography" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"from OpenSSL import SSL; SSL.Context(SSL.TLS_CLIENT_METHOD)\"")
  end,
}

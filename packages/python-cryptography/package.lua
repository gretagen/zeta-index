return {
  name    = "python-cryptography",
  version = "50.0.2",
  summary = "Cryptographic recipes and primitives (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-cryptography/python-cryptography-50.0.2.tar.gz",
  sha256  = "de36d5b9662f00ce0bd6dee7ebc5bbd24846024eb7d3ed1d22e7a65cf8faa694",
  deps    = { "python", "glibc", "python-cffi" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"from cryptography.hazmat.primitives import hashes; hashes.SHA256()\"")
  end,
}

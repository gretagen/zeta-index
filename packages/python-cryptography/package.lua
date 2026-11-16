return {
  name    = "python-cryptography",
  version = "50.0.2",
  summary = "Cryptographic recipes and primitives for Python",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-cryptography/python-cryptography-50.0.2.tar.gz",
  sha256  = "fe48d8a01f6a0061eb34e84e6a8c72de8ad3849edec84a250f2191eb96190b0c",
  deps    = { "python", "glibc", "libgcc", "openssl", "python-cffi" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import cryptography\"")
  end,
}

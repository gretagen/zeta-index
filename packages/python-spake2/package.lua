return {
  name    = "python-spake2",
  version = "0.9",
  summary = "SPAKE2 password-authenticated key exchange (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-spake2/python-spake2-0.9.tar.gz",
  sha256  = "bd7002eb106ac4d8604f2d1e6f0326c27e8b300e5dc3a77b76b24dbb9d760b46",
  deps    = { "python", "python-cryptography", "python-hkdf" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import spake2\"")
  end,
}

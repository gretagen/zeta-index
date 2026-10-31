return {
  name    = "python-hkdf",
  version = "0.0.3",
  summary = "HMAC-based key derivation function (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-hkdf/python-hkdf-0.0.3.tar.gz",
  sha256  = "a56af0bdbef49af177b3d9911a6bec481f6383c1682f00cb27bfb524020ced0e",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import hkdf\"")
  end,
}

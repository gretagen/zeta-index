return {
  name    = "python-service-identity",
  version = "26.1.0",
  summary = "Service identity verification for pyOpenSSL (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-service-identity/python-service-identity-26.1.0.tar.gz",
  sha256  = "5f4c000af869812f1b7c0894c804a34b702d4a3e4137b45b7e316379065cd75d",
  deps    = { "python", "python-attrs", "python-cryptography" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import service_identity\"")
  end,
}

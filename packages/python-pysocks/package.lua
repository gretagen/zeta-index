return {
  name    = "python-pysocks",
  version = "1.7.1",
  summary = "SOCKS4/5 client module (PySocks)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-pysocks/python-pysocks-1.7.1.tar.gz",
  sha256  = "390afbe34e053fcc8082488a04d7a922ddbda488f1fcc09c9a1bba1908958192",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import socks\"")
  end,
}

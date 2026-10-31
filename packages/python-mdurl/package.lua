return {
  name    = "python-mdurl",
  version = "0.1.2",
  summary = "Markdown URL utilities (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-mdurl/python-mdurl-0.1.2.tar.gz",
  sha256  = "7998efa449117d9dc798f0c2c5eaff4684307e1a3a19e3d022f376818b52aa4f",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import mdurl\"")
  end,
}

return {
  name    = "python-cffi",
  version = "2.1.1",
  summary = "Foreign function interface for Python calling C code (cffi)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-cffi/python-cffi-2.1.1.tar.gz",
  sha256  = "8004eabd9ec3d452748e583b48c4e985405368d76c190640755652b49f4d22f2",
  deps    = { "python", "python-pycparser" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import cffi\"")
  end,
}

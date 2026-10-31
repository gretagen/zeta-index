return {
  name    = "python-zope-interface",
  version = "8.7",
  summary = "Zope interfaces for Python (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-zope-interface/python-zope-interface-8.7.tar.gz",
  sha256  = "967f2b65f05639fc01eccc9ed2bd64aab4dc900ea65d26bec65ea9e0bdaab3bf",
  deps    = { "python", "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import zope.interface\"")
  end,
}

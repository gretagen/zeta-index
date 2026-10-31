return {
  name    = "python-pycparser",
  version = "3.12",
  summary = "C parser in Python (pycparser)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-pycparser/python-pycparser-3.12.tar.gz",
  sha256  = "c0bfec1ce048e3fe6cbdad5c1c0324156648d7a16f7cf6f480b94dce6131b23c",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import pycparser\"")
  end,
}

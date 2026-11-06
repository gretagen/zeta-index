return {
  name    = "python-humanize",
  version = "4.16.0",
  summary = "Human readable formatting (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-humanize/python-humanize-4.16.0.tar.gz",
  sha256  = "f252d78bee4c6788c98e98456f98ed7c1987481f34889ab152ce637291dd5add",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import humanize\"")
  end,
}

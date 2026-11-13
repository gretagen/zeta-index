return {
  name    = "python-txaio",
  version = "26.6.1",
  summary = "Compatibility layer for asyncio/Twisted (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-txaio/python-txaio-26.6.1.tar.gz",
  sha256  = "52796d83b1c10864e252d83df75f052e3c594e88cdebbb108fc0361d6ff023fc",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import txaio\"")
  end,
}

return {
  name    = "python-wsaccel",
  version = "0.6.7",
  summary = "WebSocket accelerator for autobahn (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-wsaccel/python-wsaccel-0.6.7.tar.gz",
  sha256  = "50ad28c956c9d09722c675f1f772622577f49474252db9cc9e7ebcb11e4e188e",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import wsaccel\"")
  end,
}

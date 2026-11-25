return {
  name    = "python-websockets",
  version = "17.4",
  summary = "WebSocket client and server library (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-websockets/python-websockets-17.4.tar.gz",
  sha256  = "7e3fbd3aa680997a8e324e94cfc806cf103780d99653f29f8869f8bf3e70d77e",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import websockets; assert websockets.__version__ == '17.4'\"")
  end,
}

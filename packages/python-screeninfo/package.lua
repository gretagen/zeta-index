return {
  name    = "python-screeninfo",
  version = "0.8.1",
  summary = "Python module to fetch monitor information (resolution, position)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-screeninfo/python-screeninfo-0.8.1.tar.gz",
  sha256  = "77a677ada9cfd187bff5a6146c5c813b3f393b7ffa5dc1a0d9f92ce07c9d0801",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import screeninfo\"")
  end,
}

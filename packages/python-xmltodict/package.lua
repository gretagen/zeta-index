return {
  name    = "python-xmltodict",
  version = "1.0.4",
  summary = "Python module to work with XML as dicts",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-xmltodict/python-xmltodict-1.0.4.tar.gz",
  sha256  = "842ec43a0b71f0a822d9af3e350261418f20ac3fd594c54643d0fe551e6b21d4",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import xmltodict\"")
  end,
}

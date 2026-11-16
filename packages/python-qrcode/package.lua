return {
  name    = "python-qrcode",
  version = "8.2",
  summary = "QR code image generator (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-qrcode/python-qrcode-8.2.tar.gz",
  sha256  = "97dd0e8a6a488e7aab1a237dab9c80443af4cefc4a30f50425a5882d0c7a8f4d",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import qrcode\"")
  end,
}

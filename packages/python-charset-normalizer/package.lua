return {
  name    = "python-charset-normalizer",
  version = "3.5.1",
  summary = "Character encoding detection (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-charset-normalizer/python-charset-normalizer-3.5.1.tar.gz",
  sha256  = "33e10be621f69b32bdbe9de409a4a770a4dcb6b0b10983fb9b06be824215bccc",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import charset_normalizer\"")
  end,
}

return {
  name    = "python-typing-extensions",
  version = "4.16.0",
  summary = "Backported standard typing features (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-typing-extensions/python-typing-extensions-4.16.0.tar.gz",
  sha256  = "1388921dc02f5587a09b660fe724fa44fe77dd857a8f7c1089c3c34c307eed84",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import typing_extensions; assert typing_extensions.VERSION\"")
  end,
}

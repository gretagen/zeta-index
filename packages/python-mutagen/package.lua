return {
  name    = "python-mutagen",
  version = "1.48.1",
  summary = "Audio metadata library (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-mutagen/python-mutagen-1.48.1.tar.gz",
  sha256  = "f9cc33ca8573f4f9ba335ff4a640e992f433ed3b04965aa8f4e607fab83d7a82",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import mutagen; assert mutagen.version_string == '1.48.1'\"")
  end,
}

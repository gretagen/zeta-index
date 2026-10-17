return {
  name    = "python-platformdirs",
  version = "4.13.4",
  summary = "Python module for platform-specific user directory locations",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-platformdirs/python-platformdirs-4.13.4.tar.gz",
  sha256  = "b0d93a2bba9615d03768499234cbf8df49a06acf9cb8bbcd660f75b0be3a3718",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import platformdirs\"")
  end,
}

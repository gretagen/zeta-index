return {
  name    = "python-charset-normalizer",
  version = "3.5.2",
  summary = "Character encoding detection library (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-charset-normalizer/python-charset-normalizer-3.5.2.tar.gz",
  sha256  = "40256d973a654e5c794b57776fff3c52decd97fd80951d50bb9140650767013f",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import charset_normalizer; assert charset_normalizer.__version__ == '3.5.2'\"")
  end,
}

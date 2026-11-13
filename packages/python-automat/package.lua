return {
  name    = "python-automat",
  version = "25.4.16",
  summary = "Self-service finite-state machines (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-automat/python-automat-25.4.16.tar.gz",
  sha256  = "e757ec540b73792809bcaaa475968bf39a96e6d7cf8fcd42d5035d21459b5b6b",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import automat\"")
  end,
}

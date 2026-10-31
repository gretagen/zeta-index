return {
  name    = "python-incremental",
  version = "24.11.0",
  summary = "Version handling for Python projects (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-incremental/python-incremental-24.11.0.tar.gz",
  sha256  = "6b2e93697be2348beff3dd56c0fa9886f803651628fd702ece1889a4ac3ab6cd",
  deps    = { "python", "python-packaging" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import incremental\"")
  end,
}

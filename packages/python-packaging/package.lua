return {
  name    = "python-packaging",
  version = "26.3",
  summary = "Core utilities for Python packages (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-packaging/python-packaging-26.3.tar.gz",
  sha256  = "1cd56e04ff2827660e80a38ba388e77ae09bb672392aa506ac4910a04352c311",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import packaging\"")
  end,
}

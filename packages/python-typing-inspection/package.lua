return {
  name    = "python-typing-inspection",
  version = "0.4.4",
  summary = "Runtime inspection of typing annotations (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-typing-inspection/python-typing-inspection-0.4.4.tar.gz",
  sha256  = "176fbe34fd5ca0707f6033e68754f33f05fbdf20266ed554b23e8cbcc270a236",
  deps    = { "python", "python-typing_extensions" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import typing_inspection\"")
  end,
}

return {
  name    = "python-shtab",
  version = "1.12.1",
  summary = "Shell completion generation for Python (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-shtab/python-shtab-1.12.1.tar.gz",
  sha256  = "15848cdbb19fdfc1f98277615fd962cc7839883ff1f391448d7cf5a7cf6f195a",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import shtab\"")
  end,
}

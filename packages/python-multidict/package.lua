return {
  name    = "python-multidict",
  version = "7.0.0",
  summary = "Multidict implementation (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-multidict/python-multidict-7.0.0.tar.gz",
  sha256  = "a8ce1bb3450454ab7d2c194812b43b9588933bd8a00bb3cefcce76688dd01221",
  deps    = { "python", "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import multidict\"")
  end,
}

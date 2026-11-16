return {
  name    = "python-orjson",
  version = "3.13.0",
  summary = "Fast JSON library (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-orjson/python-orjson-3.13.0.tar.gz",
  sha256  = "bf5954a38ff116f60dc4bd3d7473306b3bb0bd53438eae5671ce5f1af82403bb",
  deps    = { "python", "glibc", "libgcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import orjson\"")
  end,
}

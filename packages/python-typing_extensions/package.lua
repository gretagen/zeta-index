return {
  name    = "python-typing_extensions",
  version = "4.16.0",
  summary = "Backported typing features (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-typing_extensions/python-typing_extensions-4.16.0.tar.gz",
  sha256  = "29fb07e1c0cdef1dcc28f81cec4d66378fbd916e541b2a5fe8f412d0d3c00213",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import typing_extensions\"")
  end,
}

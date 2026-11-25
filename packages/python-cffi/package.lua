return {
  name    = "python-cffi",
  version = "2.1.1",
  summary = "Foreign Function Interface for Python (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-cffi/python-cffi-2.1.1.tar.gz",
  sha256  = "f2758cd86d1e8ac339e46ce0ec4d67f9e2d3cd735c690e7691ee646f0753572f",
  deps    = { "python", "glibc", "python-pycparser" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import cffi; cffi.FFI()\"")
  end,
}

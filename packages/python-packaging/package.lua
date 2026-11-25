return {
  name    = "python-packaging",
  version = "26.4",
  summary = "Core utility package for version and requirement parsing (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-packaging/python-packaging-26.4.tar.gz",
  sha256  = "405345065f052182306c0ced6f9edbfa532bf1b48a413f544dec6f0049368561",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"from packaging.version import Version; assert Version('1.2.3') > Version('1.2.2')\"")
  end,
}

return {
  name    = "python-ruamel.yaml.clib",
  version = "0.2.15",
  summary = "C extension for ruamel.yaml (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-ruamel.yaml.clib/python-ruamel.yaml.clib-0.2.15.tar.gz",
  sha256  = "3c04165fb661eea4d79e10f2b344f8523388ae23bde7c8d4d185c85c0e0e3b3c",
  deps    = { "python", "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import _ruamel_yaml\"")
  end,
}

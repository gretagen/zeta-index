return {
  name    = "python-ruamel-yaml",
  version = "0.19.1",
  summary = "YAML 1.2 parser and emitter for Python (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-ruamel-yaml/python-ruamel-yaml-0.19.1.tar.gz",
  sha256  = "19cf2de6d5e2f1bcc0faed64f9b234e104c0b80417b2f491d2b2bac8c16b5613",
  deps    = { "python", "python-ruamel.yaml.clib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import ruamel.yaml\"")
  end,
}

return {
  name    = "python-pydantic",
  version = "2.14.2",
  summary = "Data validation using Python type hints (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-pydantic/python-pydantic-2.14.2.tar.gz",
  sha256  = "c0262362ba0612973e3662a58aa3e02b77ecb67e30a53c01ce4051b7d0fa636f",
  deps    = { "python", "python-annotated-types", "python-pydantic-core", "python-typing-inspection", "python-typing_extensions" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import pydantic\"")
  end,
}

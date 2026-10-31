return {
  name    = "python-pydantic-core",
  version = "2.50.2",
  summary = "Core validation logic for pydantic (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-pydantic-core/python-pydantic-core-2.50.2.tar.gz",
  sha256  = "c677f30266eee8630b222ec5d6651e80246e5ffc42ba377d79f702987e83d35b",
  deps    = { "python", "glibc", "libgcc", "python-typing-inspection", "python-typing_extensions" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import pydantic_core\"")
  end,
}

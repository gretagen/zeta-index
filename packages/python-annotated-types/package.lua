return {
  name    = "python-annotated-types",
  version = "0.8.0",
  summary = "Reusable constraints for type annotations (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-annotated-types/python-annotated-types-0.8.0.tar.gz",
  sha256  = "3792de4090f95b39802845fa622a9019c9fc606671a2f0ba6a536fac0820a8d6",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import annotated_types\"")
  end,
}

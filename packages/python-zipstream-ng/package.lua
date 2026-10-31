return {
  name    = "python-zipstream-ng",
  version = "1.9.3",
  summary = "Stream zip files without temporary storage (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-zipstream-ng/python-zipstream-ng-1.9.3.tar.gz",
  sha256  = "5c882a3e89a51a388eb4517a2a3d5f7517f2d3e1a8c24271e3c245e6747d6be5",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import zipstream\"")
  end,
}

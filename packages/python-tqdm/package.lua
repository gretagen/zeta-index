return {
  name    = "python-tqdm",
  version = "4.70.1",
  summary = "Fast, extensible progress bar (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-tqdm/python-tqdm-4.70.1.tar.gz",
  sha256  = "0732eccd637640a1c779a5401028cfd1174cbf23a45c6b24a4a6aa521bbbf379",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import tqdm\"")
  end,
}

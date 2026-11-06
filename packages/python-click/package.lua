return {
  name    = "python-click",
  version = "8.5.0",
  summary = "Composable command line interface toolkit (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-click/python-click-8.5.0.tar.gz",
  sha256  = "6f79997bf19455b22bd15cf3dcaf58b9e5b75cfec5940a497f7358cf84e0a6c7",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import click\"")
  end,
}

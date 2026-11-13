return {
  name    = "python-zipp",
  version = "3.21.0",
  summary = "Pathlib-compatible zipfile object wrapper (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-zipp/python-zipp-3.21.0.tar.gz",
  sha256  = "c8224eea38f7ca05915d8a58efbec1abf0903420635fb1595945057315eb62b5",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import zipp\"")
  end,
}

return {
  name    = "python-pygments",
  version = "2.21.0",
  summary = "Python syntax highlighting engine (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-pygments/python-pygments-2.21.0.tar.gz",
  sha256  = "3e5c71131df6bdb0306f7b131300543964489f7ac96d7b9d5f189ad8859c1163",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import pygments\"")
  end,
}

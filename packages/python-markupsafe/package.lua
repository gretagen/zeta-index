return {
  name    = "python-markupsafe",
  version = "3.0.4",
  summary = "Safe string handling for Jinja2 (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-markupsafe/python-markupsafe-3.0.4.tar.gz",
  sha256  = "dfe5d6b2b3bf60e5106cd033ddf4224614aecc705b4eb332186ebef8643e2132",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import markupsafe\"")
  end,
}

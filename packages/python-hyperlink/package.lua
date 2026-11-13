return {
  name    = "python-hyperlink",
  version = "21.0.0",
  summary = "Immutable URL handling (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-hyperlink/python-hyperlink-21.0.0.tar.gz",
  sha256  = "26c8fdc7f1d1aafe56e93110ad78bca917bd2b05f0970b96aefdeeebdf0b4dcf",
  deps    = { "python", "python-idna" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import hyperlink\"")
  end,
}

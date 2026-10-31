return {
  name    = "python-dateutil",
  version = "2.9.0",
  summary = "Python extensions to the datetime module",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-dateutil/python-dateutil-2.9.0.tar.gz",
  sha256  = "96a66c7e4dcaa5327ee5f46b30a071c847d357539931a8086e605950764e8eb0",
  deps    = { "python", "python-six" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import dateutil\"")
  end,
}

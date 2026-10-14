return {
  name    = "python-jinja2",
  version = "3.1.6",
  summary = "Fast and easy to use template engine (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-jinja2/python-jinja2-3.1.6.tar.gz",
  sha256  = "99873653e079fa05e4a417a4b26f12d7cd47f5ea98847c7288e589e158784fee",
  deps    = { "python", "python-markupsafe" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import jinja2\"")
  end,
}

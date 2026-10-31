return {
  name    = "python-defusedxml",
  version = "0.7.1",
  summary = "XML bomb protection for Python (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-defusedxml/python-defusedxml-0.7.1.tar.gz",
  sha256  = "2289271b61003cbdc0672f8b16fd9b40934987ae80fce16a32b09912b37f815d",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import defusedxml\"")
  end,
}

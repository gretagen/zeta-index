return {
  name    = "python-markdown-it-py",
  version = "4.2.0",
  summary = "Markdown parser in Python (markdown-it-py)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-markdown-it-py/python-markdown-it-py-4.2.0.tar.gz",
  sha256  = "cf573fb0046f13f88717898dce4d4079fe06fd7ecdb203993e0fe7937457cd18",
  deps    = { "python", "python-mdurl" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import markdown_it\"")
  end,
}

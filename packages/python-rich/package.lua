return {
  name    = "python-rich",
  version = "15.0.0",
  summary = "Render rich text and tables in the terminal (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-rich/python-rich-15.0.0.tar.gz",
  sha256  = "ee6d1108f00d675f062fd9f501e4c0b15a7f856ad8dea7fad33a5ae43f20fed4",
  deps    = { "python", "python-markdown-it-py", "python-pygments" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import rich\"")
  end,
}

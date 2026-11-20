return {
  name    = "python-textual",
  version = "8.2.8",
  summary = "Textual TUI framework for Python (with dependency chain)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-textual/python-textual-8.2.8.tar.gz",
  sha256  = "50d1857cae9f5e5c56bc64865bb51dc213b6b364dbaafdb5848842ef82c011d6",
  deps    = { "glibc", "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/lib/python3.14/site-packages/textual && test -d " .. p.install_root .. "/usr/lib/python3.14/site-packages/textual-8.2.8.dist-info && PYTHONPATH=" .. p.install_root .. "/usr/lib/python3.14/site-packages python3 -c \"import textual, rich, platformdirs, markdown_it, pygments; print('pt ok')\"")
  end,
}

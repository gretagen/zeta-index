return {
  name    = "python-wcwidth",
  version = "0.9.4",
  summary = "Terminal character width library (wcwidth)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-wcwidth/python-wcwidth-0.9.4.tar.gz",
  sha256  = "ff9fed1972350fd67fe83987925f51a80b369604732a40e71b3578c435a26ae8",
  deps    = { "python" },
  archive = { strip = 1 },
  test = function(p)
    p:run("PYTHONPATH=" .. p.install_root .. "/usr/lib/python3.14/site-packages python3 -c \"import wcwidth; assert wcwidth.__version__ == '0.9.4'\"")
  end,
}

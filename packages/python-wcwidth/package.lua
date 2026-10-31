return {
  name    = "python-wcwidth",
  version = "0.9.3",
  summary = "Measure terminal column width of text (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-wcwidth/python-wcwidth-0.9.3.tar.gz",
  sha256  = "91179be6f78d18ea14c338d35abddb99da3e5aba70b68b5eec31ce9d522b4040",
  deps    = { "python", "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import wcwidth\"")
  end,
}

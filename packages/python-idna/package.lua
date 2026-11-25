return {
  name    = "python-idna",
  version = "3.20",
  summary = "Internationalized domain names library (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-idna/python-idna-3.20.tar.gz",
  sha256  = "7ccfc1950363da2dec074051b7ea6679d6c4d41d2600938f5d940e3ebcd0808d",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import idna; assert idna.encode('bücher.de') == b'xn--bcher-kva.de'\"")
  end,
}

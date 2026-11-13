return {
  name    = "python-idna",
  version = "3.20",
  summary = "Internationalized domain names in applications (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-idna/python-idna-3.20.tar.gz",
  sha256  = "f96c6de8f44abdefb2f7e22f135f792ca38337cbbb25cfd5d10b942f2859d8a6",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import idna\"")
  end,
}

return {
  name    = "python-imageio",
  version = "2.38.1",
  summary = "Python library for reading and writing image data",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-imageio/python-imageio-2.38.1.tar.gz",
  sha256  = "1c638806b83df6ab9b0cf08e7301fd677cd537583798eb1781c357b1bc2a1914",
  deps    = { "python", "python-numpy" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import imageio\"")
  end,
}

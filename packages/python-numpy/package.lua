return {
  name    = "python-numpy",
  version = "2.5.4",
  summary = "Fundamental package for array computing in Python",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-numpy/python-numpy-2.5.4.tar.gz",
  sha256  = "1b1a897e8fca112a95135af42c6cdd4e84b2535231a06a4fc23de9d56405f0c0",
  deps    = { "python", "glibc", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import numpy; assert numpy.__version__.startswith('2.5')\"")
  end,
}

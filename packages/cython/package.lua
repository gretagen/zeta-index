return {
  name    = "cython",
  version = "3.3.1",
  summary = "Cython compiler for Python C extensions",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/cython/cython-3.3.1.tar.gz",
  sha256  = "2ebb9fc8205044b2855e55dd85f6dcdbe4691a4d971d97df15485823e1658721",
  deps    = { "glibc", "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/lib/python3.14/site-packages/Cython && PYTHONPATH=" .. p.install_root .. "/usr/lib/python3.14/site-packages python3 -c \"from Cython.Build import cythonize; import Cython; print(Cython.__version__)\"")
  end,
}

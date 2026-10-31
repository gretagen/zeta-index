return {
  name    = "python-pynacl",
  version = "1.6.2",
  summary = "Python binding to libsodium (PyNaCl)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-pynacl/python-pynacl-1.6.2.tar.gz",
  sha256  = "5387f34d8633c3a9bf8b00efe52c547d70a529a6acf32899699606d519edfeb3",
  deps    = { "python", "glibc", "libsodium", "python-cffi" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import nacl\"")
  end,
}

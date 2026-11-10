return {
  name    = "gbinder-python",
  version = "1.3.1",
  summary = "Python bindings for libgbinder",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gbinder-python/gbinder-python-1.3.1.tar.gz",
  sha256  = "88b72b2b61de22a45a12978c76d937a3ca12e680dda0b1ff7225546bfe47dadd",
  deps    = { "glibc", "python", "libgbinder" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/lib/python3.14/site-packages && ls " .. p.install_root .. "/usr/lib/python3.14/site-packages/gbinder*.so >/dev/null && LD_LIBRARY_PATH=" .. p.install_root .. "/usr/lib PYTHONPATH=" .. p.install_root .. "/usr/lib/python3.14/site-packages python3 -c \"import gbinder; print(gbinder.__doc__ or 'gbinder ok')\"")
  end,
}

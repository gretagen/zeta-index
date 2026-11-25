return {
  name    = "python-brotlicffi",
  version = "1.2.1.0",
  summary = "Brotli compression via CFFI (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-brotlicffi/python-brotlicffi-1.2.1.0.tar.gz",
  sha256  = "2e8da6303882df452313ff175332be530cd3f6bf042fbbb866ff2fa956f25607",
  deps    = { "python", "glibc", "python-cffi" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import brotlicffi; assert brotlicffi.decompress(brotlicffi.compress(b'zeta')) == b'zeta'\"")
  end,
}

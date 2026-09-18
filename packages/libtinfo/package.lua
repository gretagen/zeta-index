return {
  name    = "libtinfo",
  version = "6.6",
  summary = "Terminfo database and terminal capability library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libtinfo/libtinfo-6.6.tar.gz",
  sha256  = "37d035477074c171f3e86c06a9abed5ae81e0864a5c8f6774e62ede26e528271",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libtinfo.so.6.6 && readelf -d " .. p.install_root .. "/usr/lib/libtinfo.so.6.6 | grep -q 'libtinfo.so.6'")
  end,
}

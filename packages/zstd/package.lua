return {
  name    = "zstd",
  version = "1.5.7-2",
  summary = "Zstandard compression library (shared + static + cmake config)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zstd/zstd-1.5.7-2.tar.gz",
  sha256  = "e57045e4d4ef41e429d6ae7103a1d9049568f2ba463ade66509d3736e54f2515",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib64/libzstd.a && test -f " .. p.install_root .. "/usr/lib64/libzstd.so.1 && test -x " .. p.install_root .. "/usr/bin/zstd && test -f " .. p.install_root .. "/usr/lib64/cmake/zstd/zstdConfig.cmake")
  end,
}

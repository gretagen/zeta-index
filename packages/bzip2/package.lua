return {
  name    = "bzip2",
  version = "1.0.8-2",
  summary = "bzip2 compression library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/bzip2/bzip2-1.0.8-2.tar.gz",
  sha256  = "41f1726666e56908d4539d8f3980f67b69b03f153384adf90f77f98adf8f22f8",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/bzip2 && test -x " .. p.install_root .. "/usr/bin/bunzip2 && test -f " .. p.install_root .. "/usr/lib/libbz2.so.1.0")
  end,
}

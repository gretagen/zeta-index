return {
  name    = "libburn",
  version = "1.5.8",
  summary = "Library for reading, mastering and writing optical discs",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libburn/libburn-1.5.8.tar.gz",
  sha256  = "aa9e55b9e5c30bc3b5eb047421e257c97b0a19a19d1250f4c91943153ef4d3a3",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libburn.so.4 && test -x " .. p.install_root .. "/usr/bin/cdrskin")
  end,
}

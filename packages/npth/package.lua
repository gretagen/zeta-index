return {
  name    = "npth",
  version = "1.8",
  summary = "New Portable Threads library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/npth/npth-1.8.tar.gz",
  sha256  = "28a1709e6c44524ad0013ca012918395976b867eb8e0aba54ac53e5096d872c2",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libnpth.so.0")
  end,
}

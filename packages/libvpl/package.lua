return {
  name    = "libvpl",
  version = "2.17.0",
  summary = "Intel Video Processing Library (oneVPL API, libvpl.so.2)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libvpl/libvpl-2.17.0-1-x86_64.pkg.tar.zst",
  sha256  = "2c9f8d6dd899e8efbadf98976a62dae5fea704058f453048ac14e8ec246888e1",
  deps    = { "glibc", "libgcc", "libstdc++", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
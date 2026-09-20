return {
  name    = "ncdu",
  version = "2.9.2",
  summary = "NCurses disk usage viewer",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/ncdu/ncdu-2.9.2-1-x86_64.pkg.tar.zst",
  sha256  = "0d50e503eb902aa227de9b90715e0e57d1836eb0d9ce9e5ad46ea9a293d0f6e2",
  deps    = { "glibc", "ncurses", "zstd" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/ncdu")
  end,
}

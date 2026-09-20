return {
  name    = "lib32-libx11",
  version = "1.8.13",
  summary = "X11 client-side library (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libx11/lib32-libx11.pkg.tar.zst",
  sha256  = "681199d67c2c6c5838e9f8db1d651ec0250345cd1c77ed648a59e7870b3fe978",
  deps    = { "libx11", "lib32-glibc", "xorgproto", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}

return {
  name    = "libx11",
  version = "1.8.13",
  summary = "X11 client-side library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libx11/libx11-1.8.13-1-x86_64.pkg.tar.zst",
  sha256  = "251f58e0a9bc2cd69b8e708f239914e48e3a91cd1822220806d273be873d026f",
  deps    = { "glibc", "libxcb", "xorgproto", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}

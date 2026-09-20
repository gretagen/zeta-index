return {
  name    = "libxcursor",
  version = "1.2.3",
  summary = "X cursor management library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libxcursor/libxcursor.pkg.tar.zst",
  sha256  = "2a90267877c2f5ffe6c41a8ef91e6def3b7720de7b4b2628b329373ce20c1b99",
  deps    = { "libxfixes", "libxrender", "libx11", "xorgproto", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}

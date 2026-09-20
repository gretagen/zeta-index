return {
  name    = "libxmu",
  version = "1.3.1",
  summary = "X11 miscellaneous micro-utility library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libxmu/libxmu.pkg.tar.zst",
  sha256  = "31870eb5ad1911880cd7b2f3a59292b644d84b873ed62a1a7c36b9ac26bc08a5",
  deps    = { "libxext", "libx11", "xorgproto", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}

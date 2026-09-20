return {
  name    = "libpaper",
  version = "2.2.8",
  summary = "Library for handling paper characteristics",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libpaper/libpaper.pkg.tar.zst",
  sha256  = "6999728a4bee467ff3ec792e524d852ec1841b186402f6bd078c23b03b88f3e9",
  deps    = { },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}

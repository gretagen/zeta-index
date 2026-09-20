return {
  name    = "ttf-liberation",
  version = "2.0.0",
  summary = "Liberation TrueType fonts",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/ttf-liberation/ttf-liberation.pkg.tar.zst",
  sha256  = "cf3c0ae816f6086fc29481e6d82a928d35abde22924fb8cd936f13dd9fe4bd05",
  deps    = { "fontconfig" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/share/fonts")
  end,
}

return {
  name    = "giflib",
  version = "6.1.3",
  summary = "Library for reading and writing gif images",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/giflib/giflib.pkg.tar.zst",
  sha256  = "88c0509823519642af0a3418db529dc3e8130d1d204dc64c071c506fdc7e6ed7",
  deps    = { },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}

return {
  name    = "lib32-libpng",
  version = "1.6.58",
  summary = "A collection of routines used to create PNG format graphics files (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libpng/lib32-libpng.pkg.tar.zst",
  sha256  = "254bf3031eedf7a999ed4ff2aee08643e70a192297509230333f6af544a86c13",
  deps    = { "libpng", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}

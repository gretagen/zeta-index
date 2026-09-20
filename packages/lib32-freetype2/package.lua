return {
  name    = "lib32-freetype2",
  version = "2.14.3",
  summary = "Font rasterization library (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-freetype2/lib32-freetype2.pkg.tar.zst",
  sha256  = "3ad5d0b59fb49cac3acfa3aa7399049a38bf9da75908185b69f9ba02ae99c98f",
  deps    = { "freetype2", "lib32-brotli", "lib32-bzip2", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}

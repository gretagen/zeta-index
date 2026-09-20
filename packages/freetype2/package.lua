return {
  name    = "freetype2",
  version = "2.14.3",
  summary = "Font rendering library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/freetype2/freetype2-2.14.3-1-x86_64.pkg.tar.zst",
  sha256  = "fcaa410420dea42779d02aa76f1cc95d8430bdc52071ac6219d33306899b8655",
  deps    = { "glibc", "libz", "libpng", "harfbuzz", "brotli", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}

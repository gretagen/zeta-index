return {
  name    = "fcft",
  version = "3.3.3-1-x86_64",
  summary = "simple library for font loading and glyph rasterization",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/fcft/fcft-3.3.3-1-x86_64.pkg.tar.zst",
  sha256  = "f23defaa07fe84d717e9187b0a04b05075c17d767928abb1b21413db19f9b3c2",
  deps    = { "fontconfig", "freetype", "harfbuzz", "libutf8proc", "pixman" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libfcft.so.4.3.3")
  end,
}

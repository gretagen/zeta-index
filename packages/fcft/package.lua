return {
  name    = "fcft",
  version = "3.3.3",
  summary = "Font shaping and line breaking library (for foot)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/fcft/fcft-3.3.3.tar.gz",
  sha256  = "520a47a49de91328bea7d2bf072ffb46050a7cbc246fa5cf6daf213921a87d57",
  deps    = { "glibc", "freetype", "fontconfig", "harfbuzz", "utf8proc", "tllist", "pixman" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libfcft.so* | grep -q . && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/lib/pkgconfig pkg-config --exists fcft")
  end,
}

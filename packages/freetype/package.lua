return {
  name = "freetype",
  version = "2.14.3",
  summary = "FreeType font engine library",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/freetype/freetype-2.14.3.tar.gz",
  sha256 = "c68b073c092cc73d7a2113c77d3e14337636c10af82a2fbf08df55a25a198e8a",
  deps = { "glibc", "libz" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libfreetype.so.6")
  end,
}

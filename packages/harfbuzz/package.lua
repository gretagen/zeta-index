return {
  name    = "harfbuzz",
  version = "11.1.0",
  summary = "Text shaping library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/harfbuzz/harfbuzz-11.1.0.tar.gz",
  sha256  = "eca44b0b67e066d2e4c0ad52d47c15d36528ff26da556825b0a98581c453aaa8",
  deps    = { "glibc", "freetype" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libharfbuzz.so.0 && readelf -d " .. p.install_root .. "/usr/lib/libharfbuzz.so.0 | grep -q 'libharfbuzz.so.0'")
  end,
}

return {
  name = "fontconfig",
  version = "2.18.2",
  summary = "Font configuration and customization library",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/fontconfig/fontconfig-2.18.2.tar.gz",
  sha256 = "5141e4fe95b803feb17a0a3890c6ab2dd56834c5e2fa6f5ad731689a30655bb2",
  deps = { "glibc", "freetype", "expat" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libfontconfig.so.1")
  end,
}

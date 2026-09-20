return {
  name    = "libunibreak",
  version = "7.0",
  summary = "An implementation of the line breaking algorithm as described in Unicode 5.2.0 S",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libunibreak/libunibreak.pkg.tar.zst",
  sha256  = "0bb013ef4b8c9ba0ee0fe009201726600a0021330bb4dea690450e33faa45279",
  deps    = { },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}

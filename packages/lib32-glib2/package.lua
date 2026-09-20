return {
  name    = "lib32-glib2",
  version = "2.88.3",
  summary = "Low level core library - 32-bit",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-glib2/lib32-glib2.pkg.tar.zst",
  sha256  = "05ad913b3646b9329050dd54b400958e325dd7f13ed93ebc063c6cea0ae651db",
  deps    = { "glib2", "lib32-gcc-libs", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}

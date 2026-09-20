return {
  name    = "libnghttp2",
  version = "1.70.0",
  summary = "Framing layer of HTTP/2 is implemented as a reusable C library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libnghttp2/libnghttp2.pkg.tar.zst",
  sha256  = "332e2cb2d953dab326f97a3257594f8031ec0fce6305e2bcd5d64d9832c84778",
  deps    = { },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}

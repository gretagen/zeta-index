return {
  name    = "libnghttp3",
  version = "1.18.0",
  summary = "HTTP/3 library written in C",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libnghttp3/libnghttp3.pkg.tar.zst",
  sha256  = "4a474a6c8c2970bead13cbdf4ab47662039d43dcc48aa811ee58becd778cf890",
  deps    = { },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}

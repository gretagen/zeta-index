return {
  name    = "libxres",
  version = "1.2.3",
  summary = "X11 Resource extension library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libxres/libxres.pkg.tar.zst",
  sha256  = "dab2f5a95d171b7517065d5b35addf1001beb10f52441ef5fb594cfb529a4c74",
  deps    = { "libxext", "libx11", "xorgproto", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}

return {
  name    = "alsa-plugins",
  version = "1:1.2.12",
  summary = "Additional ALSA plugins",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/alsa-plugins/alsa-plugins.pkg.tar.zst",
  sha256  = "2163decc9f4b8f3108eb56c7957e1e7894e83ca494c6f550892c82bad494183a",
  deps    = { "alsa-lib", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}

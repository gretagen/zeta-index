return {
  name    = "libvlc-dev",
  version = "3.0.23",
  summary = "libvlc stable API headers (for plugin authors)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libvlc-dev/libvlc-dev-3.0.23.tar.gz",
  sha256  = "422775f92a10600cd87a86f5c71d0fbfcb30a871bc0b3079a7678f9d77542812",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/include/vlc/libvlc.h && test -f " .. p.install_root .. "/usr/include/vlc/libvlc_media_player.h && test -f " .. p.install_root .. "/usr/include/vlc/libvlc_media_list.h")
  end,
}

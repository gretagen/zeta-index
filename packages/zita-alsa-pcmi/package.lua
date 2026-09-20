return {
  name    = "zita-alsa-pcmi",
  version = "0.6.1",
  summary = "The successor of clalsadrv, provides easy access to ALSA PCM devices.",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/zita-alsa-pcmi/zita-alsa-pcmi.pkg.tar.zst",
  sha256  = "e551976a96ca55fb16154055f121e124b38e5fadfb74e76c283db75fd08de0f7",
  deps    = { "libgcc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}

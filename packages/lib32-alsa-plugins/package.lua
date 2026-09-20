return {
  name    = "lib32-alsa-plugins",
  version = "1.2.12",
  summary = "Additional ALSA plugins (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-alsa-plugins/lib32-alsa-plugins.pkg.tar.zst",
  sha256  = "bed31e16e7484c3d136448a946ebbddf8c19bd48510b44d68926af89e53197ed",
  deps    = { "lib32-alsa-lib", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}

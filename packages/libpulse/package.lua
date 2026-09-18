return {
  name    = "libpulse",
  version = "17.0+r98+gb096704c0",
  summary = "PulseAudio client library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libpulse/libpulse-17.0+r98+gb096704c0.pkg.tar.zst",
  sha256  = "79e91509611c537755a264673e6101975ef1aaf047f381be0be2e4d348ca48c6",
  deps    = { "dbus", "glib", "libsndfile", "libxcb", "systemd-libs" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

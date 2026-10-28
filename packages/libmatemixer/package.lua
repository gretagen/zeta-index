return {
  name    = "libmatemixer",
  version = "1.28.0",
  summary = "Mixer library for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libmatemixer/libmatemixer-1.28.0.tar.gz",
  sha256  = "5f95e5ac978331d1847673cd2b526baa405d75d08506f5b4d93b4bba02b641ee",
  deps    = { "alsa-lib", "glib", "pulseaudio", "systemd-libs" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\" && test -f " .. p.install_root .. "/usr/lib/pkgconfig/libmatemixer.pc")
  end,
}

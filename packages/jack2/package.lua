return {
  name    = "jack2",
  version = "1.9.22",
  summary = "JACK audio connection kit",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/jack2/jack2-1.9.22-2-x86_64.pkg.tar.zst",
  sha256  = "e400bbd5f48b5f657d7835ef607822d14be1fc66c1807718b13086c53b95c8a7",
  deps    = { "glibc", "alsa-lib", "dbus", "libsamplerate", "opus", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}

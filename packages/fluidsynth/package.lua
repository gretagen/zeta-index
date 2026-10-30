return {
  name    = "fluidsynth",
  version = "2.6.1-1-x86_64",
  summary = "a real-time software synthesizer based on the SoundFont 2 specifications",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/fluidsynth/fluidsynth-2.6.1-1-x86_64.pkg.tar.zst",
  sha256  = "add22327a69befe12255960cab581b22e3c45353a30a170487357f0aaafb07f9",
  deps    = { "glibc", "libgcc", "libgomp", "libstdc++", "sdl3", "alsa-lib", "dbus", "jack", "jack2", "pipewire", "libpulse", "libsndfile", "portaudio", "readline", "systemd-libs" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/fluidsynth")
  end,
}

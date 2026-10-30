return {
  name    = "pipewire-audio",
  version = "1.6.10-1-x86_64",
  summary = "low-latency audio/video router and processor - Audio support",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/pipewire-audio/pipewire-audio-1.6.10-1-x86_64.pkg.tar.zst",
  sha256  = "df34e8b39a82e1838ffb11a7c431acd2bf1faf4d72358b63310cd142ebc3204d",
  deps    = { "pipewire", "alsa-card-profiles", "alsa-lib", "bluez", "dbus", "fftw", "glib", "glibc", "libebur128", "libfdk-aac", "libfreeaptx", "libgcc", "liblc3", "libldac", "libmysofa", "libsndfile", "libstdc++", "libusb", "lilv", "opus", "sbc", "spandsp", "systemd-libs", "webrtc-audio-processing-1" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/alsa-lib/libasound_module_ctl_pipewire.so")
  end,
}

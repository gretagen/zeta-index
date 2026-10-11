return {
  name    = "pavucontrol",
  version = "1:6.2",
  summary = "PulseAudio and PipeWire volume control (GTK4)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/pavucontrol/pavucontrol-6.2.tar.gz",
  sha256  = "fc55568b4264ffb94086f180a0b4103f3e5b06bfbe20e024e4fb3fb27b1e1248",
  deps    = { "glibc", "libgcc", "libstdc++", "glib", "glibmm", "gtk4", "gtkmm4", "libjson-glib", "libcanberra", "libsigc++", "pulseaudio" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/pavucontrol")
  end,
}

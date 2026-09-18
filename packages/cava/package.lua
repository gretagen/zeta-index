return {
  name    = "cava",
  version = "1.0.0",
  summary = "Console-based audio visualizer for ALSA, PulseAudio and PipeWire",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/cava/cava-1.0.0.tar.gz",
  sha256  = "82b82d4c8e88c49a0c88ed318bd0487c213287db6cce16999d2d8cfe10253019",
  deps    = { "glibc", "fftw3", "iniparser", "sdl2", "pulseaudio", "alsa-lib", "pipewire" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/cava")
  end,
}

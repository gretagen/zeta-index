return {
  name    = "pcaudiolib",
  version = "1.3",
  summary = "Portable C audio playback library (ALSA)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/pcaudiolib/pcaudiolib-1.3.tar.gz",
  sha256  = "8271cc8249412d7ad04a6ddc08858a5aa0b3f26975b2a42034887ab7d5cee0cb",
  deps    = { "glibc", "alsa-lib", "pulseaudio" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libpcaudio.so* >/dev/null && test -f " .. p.install_root .. "/usr/include/pcaudiolib/audio.h")
  end,
}

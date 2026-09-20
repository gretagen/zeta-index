return {
  name    = "portaudio",
  version = "19.7.0",
  summary = "Cross-platform audio I/O library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/portaudio/portaudio-1%3A19.7.0-4-x86_64.pkg.tar.zst",
  sha256  = "ca2e6423a25820b8a2808ce933365680f38cb4af7875533af2902ade761379c2",
  deps    = { "glibc", "alsa-lib", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}

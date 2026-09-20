return {
  name    = "rubberband",
  version = "4.0.0",
  summary = "Audio time-stretching library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/rubberband/rubberband-4.0.0-2-x86_64.pkg.tar.zst",
  sha256  = "ed5e3a9856db7a99f4aa7bfe4f0cb4903faab720020d0b07aef61376f86ef9e1",
  deps    = { "glibc", "libgcc", "libsamplerate", "libsndfile", "fftw", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}

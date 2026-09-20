return {
  name    = "sndio",
  version = "1.10.0",
  summary = "Sound input/output library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/sndio/sndio-1.10.0-1-x86_64.pkg.tar.zst",
  sha256  = "82b16de5ef6054418db941e01f6aca2b5afb605a579eabd847155daa2fb56ea2",
  deps    = { "glibc", "alsa-lib", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}

return {
  name    = "mpv",
  version = "0.41.0",
  summary = "Video and audio player",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/mpv/mpv-1%3A0.41.0-6-x86_64.pkg.tar.zst",
  sha256  = "19d0bc2b43c9e0487caffe4be881e41a3c2f8261bac3f5bcabef254a78fba59a",
  deps    = { "glibc", "ffmpeg", "libass", "libbluray", "libpulse", "libva", "libx11", "libxext", "libxkbcommon", "libxv", "libglvnd", "libplacebo", "mesa", "luajit", "libarchive", "libpipewire", "alsa-lib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/mpv")
  end,
}

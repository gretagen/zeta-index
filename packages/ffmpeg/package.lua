return {
  name    = "ffmpeg",
  version = "9.0.1",
  summary = "Multimedia framework",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/ffmpeg/ffmpeg-2%3A9.0.1-4-x86_64.pkg.tar.zst",
  sha256  = "2d7d982b62db59d3ca86267183c94ef7d258dd199fd489306db50c9b79626f48",
  deps    = { "glibc", "alsa-lib", "aom", "bzip2", "dav1d", "fontconfig", "freetype2", "glib2", "gnutls", "gsm", "harfbuzz", "jack2", "lame", "lcms2", "libass", "libbluray", "libdvdnav", "libdvdread", "libgcc", "libplacebo", "libpulse", "libtheora", "libva", "libvdpau", "libvorbis", "libvpx", "libwebp", "libx11", "libxcb", "libxext", "libxv", "opencore-amr", "openjpeg2", "opus", "rav1e", "rubberband", "sdl2", "snappy", "sndio", "speex", "srt", "svt-av1", "v4l-utils", "vapoursynth", "vid.stab", "vmaf", "vulkan-icd-loader", "x264", "x265", "xvidcore", "xz", "zeromq", "zimg", "zlib", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}

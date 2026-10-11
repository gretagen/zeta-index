return {
  name    = "ffmpeg",
  version = "9.0.1",
  summary = "Multimedia framework",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/ffmpeg/ffmpeg-9.0.1-4-x86_64.pkg.tar.zst",
  sha256  = "2d7d982b62db59d3ca86267183c94ef7d258dd199fd489306db50c9b79626f48",
  deps    = { "glibc", "alsa-lib", "aom", "bzip2", "cairo", "dav1d", "fontconfig", "freetype", "fribidi", "glib", "gmp", "gnutls", "gsm", "harfbuzz", "jack2", "lame", "lcms2", "libass", "libbluray", "libdrm", "libdvdnav", "libdvdread", "libgcc", "libjxl", "libmodplug", "libopenmpt", "libplacebo", "pulseaudio", "librsvg", "libsoxr", "libssh", "libtheora", "libva", "libvdpau", "libvorbis", "libvpl", "libvpx", "libwebp", "libX11", "libxcb", "libXext", "libXv", "libxml2", "ocl-icd", "opencore-amr", "openjpeg2", "opus", "rav1e", "rubberband", "sdl2", "snappy", "sndio", "speex", "srt", "svt-av1", "v4l-utils", "vapoursynth", "vid.stab", "vmaf", "mesa-drivers", "x264", "x265", "xvidcore", "xz-utils", "zeromq", "zimg", "libz", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}

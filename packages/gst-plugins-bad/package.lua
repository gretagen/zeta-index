return {
  name    = "gst-plugins-bad",
  version = "1.28.8-1-x86_64",
  summary = "multimedia graph framework - bad plugins",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gst-plugins-bad/gst-plugins-bad-1.28.8-1-x86_64.pkg.tar.zst",
  sha256  = "02203e7eeef05e4a43d4bcf8d2d829758efbc2c5efe5e7a1744a4e6b7f53a5ee",
  deps    = { "gst-plugins-bad-libs", "gst-plugins-base-libs", "gstreamer", "aom", "bzip2", "cairo", "chromaprint", "curl", "faac", "faad2", "fluidsynth", "glib", "glibc", "gsm", "imath", "libjson-glib", "lcms2", "libass", "libavtp", "libbs2b", "libdc1394", "libdca", "libde265", "libdvdnav", "libdvdread", "libfdk-aac", "libfreeaptx", "libgcc", "libgme", "liblc3", "libldac", "liblrdf", "libltc", "libmicrodns", "libmodplug", "libmpcdec", "libopenmpt", "librsvg", "libsndfile", "libsrtp", "libstdc++", "libwebp", "libxml2", "lilv", "mjpegtools", "neon", "nettle", "openal", "openexr", "openh264", "openjpeg2", "openssl", "opus", "pango", "qrencode", "rtmpdump", "sbc", "soundtouch", "spandsp", "srt", "svt-av1", "webrtc-audio-processing-1", "wildmidi", "x265", "zbar", "zvbi", "zxing-cpp" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/gstreamer-1.0/libgstaes.so")
  end,
}

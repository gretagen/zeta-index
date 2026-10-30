return {
  name    = "gst-thumbnailers",
  version = "1.1.0-2-x86_64",
  summary = "gStreamer video and audio file thumbnailer",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gst-thumbnailers/gst-thumbnailers-1.1.0-2-x86_64.pkg.tar.zst",
  sha256  = "d2f1ffc9ce6a25c20a690b48544c6281736f9f074d561d737e7c7e02c21cceda",
  deps    = { "glib", "glibc", "glycin", "gst-plugins-base", "gst-plugins-base-libs", "gst-plugins-good", "gstreamer", "libgcc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/gst-audio-thumbnailer")
  end,
}

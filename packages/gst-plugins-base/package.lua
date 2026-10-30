return {
  name    = "gst-plugins-base",
  version = "1.28.8-1-x86_64",
  summary = "multimedia graph framework - base plugins",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gst-plugins-base/gst-plugins-base-1.28.8-1-x86_64.pkg.tar.zst",
  sha256  = "be3374db7788bc4a8b6ad482910f24b3c5b3eb965a4472ca69e31a917b5ca102",
  deps    = { "gst-plugins-base-libs", "gstreamer", "alsa-lib", "cairo", "cdparanoia", "glib", "glibc", "libgcc", "libogg", "libtheora", "libvorbis", "opus", "pango" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/gstreamer-1.0/libgstalsa.so")
  end,
}

return {
  name    = "gst-plugins-good",
  version = "1.28.8-1-x86_64",
  summary = "multimedia graph framework - good plugins",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gst-plugins-good/gst-plugins-good-1.28.8-1-x86_64.pkg.tar.zst",
  sha256  = "fbd6e5b7e8869764bb71cc74a0f701305c558407b7d756b6afa723f89bdfcc73",
  deps    = { "gst-plugins-base-libs", "gstreamer", "aalib", "bzip2", "cairo", "flac", "gdk-pixbuf", "glib", "glibc", "lame", "libavc1394", "libcaca", "libdv", "libgcc", "libgudev", "libiec61883", "libjpeg-turbo", "libpng", "libpulse", "libraw1394", "libshout", "libsoup3", "libstdc++", "libvpx", "libX11", "libXdamage", "libXext", "libXfixes", "libxml2", "libXtst", "mpg123", "nettle", "opencore-amr", "orc", "speex", "taglib", "twolame", "v4l-utils", "wavpack", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/gstreamer-1.0/libgst1394.so")
  end,
}

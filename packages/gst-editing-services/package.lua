return {
  name    = "gst-editing-services",
  version = "1.28.8-1-x86_64",
  summary = "multimedia graph framework - editing services",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gst-editing-services/gst-editing-services-1.28.8-1-x86_64.pkg.tar.zst",
  sha256  = "c34aad1f3cab3b8d1d0d6b60919adbbcd47f3578b7f6d30c265923ac461b3639",
  deps    = { "gst-devtools-libs", "gst-plugins-base-libs", "gst-python", "gstreamer", "glib", "glibc", "libjson-glib", "libxml2", "orc", "python", "python-gobject", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/gstreamer-1.0/libgstges.so")
  end,
}

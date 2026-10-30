return {
  name    = "gst-plugin-gtk4",
  version = "0.15.4-1-x86_64",
  summary = "multimedia graph framework - gtk4 plugin",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gst-plugin-gtk4/gst-plugin-gtk4-0.15.4-1-x86_64.pkg.tar.zst",
  sha256  = "acb10e5154982d274f699d91940723a7d90d8674333e3fda9d649330841039de",
  deps    = { "glib", "glibc", "gstreamer", "libgcc", "graphene", "gst-plugins-base-libs", "gtk4" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/gstreamer-1.0/libgstgtk4.so")
  end,
}

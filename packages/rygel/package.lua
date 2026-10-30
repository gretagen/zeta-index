return {
  name    = "rygel",
  version = "46.1-2-x86_64",
  summary = "uPnP AV MediaServer and MediaRenderer",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/rygel/rygel-46.1-2-x86_64.pkg.tar.zst",
  sha256  = "e28f219d9fd1656273117b26410714c52971e6496fd1f1f1ad6335189f346dc9",
  deps    = { "gdk-pixbuf", "glib", "glibc", "gst-plugins-base-libs", "gstreamer", "gtk4", "gupnp", "gupnp-dlna", "hicolor-icon-theme", "libgee", "libmediaart", "libsoup3", "libunistring", "libX11", "libxml2", "sqlite", "tinysparql" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/rygel")
  end,
}

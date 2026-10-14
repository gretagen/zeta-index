return {
  name    = "xdg-desktop-portal",
  version = "1.22.1-2",
  summary = "Desktop integration portal frontend (D-Bus)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xdg-desktop-portal/xdg-desktop-portal-1.22.1-2.tar.gz",
  sha256  = "f1424c022bd4c6d940b1d3776b36e76dc2a306ed3b058907eea5ca0bf94234bd",
  deps    = { "glibc", "glib", "libjson-glib", "libfuse3", "gstreamer", "gst-plugins-base-libs", "pipewire", "gdk-pixbuf", "libgudev", "bubblewrap" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/libexec/xdg-desktop-portal && " .. p.install_root .. "/usr/libexec/xdg-desktop-portal --help")
  end,
}

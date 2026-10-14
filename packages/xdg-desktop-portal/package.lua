return {
  name    = "xdg-desktop-portal",
  version = "1.22.1-2",
  summary = "Desktop integration portal frontend (D-Bus)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xdg-desktop-portal/xdg-desktop-portal-1.22.1-2.tar.gz",
  sha256  = "526a13da5222e0264fd799906c41f5637d2473a75ef2cdf7668664ed50513e4b",
  deps    = { "glibc", "glib", "libjson-glib", "libfuse3", "gstreamer", "gst-plugins-base-libs", "pipewire", "gdk-pixbuf", "libgudev", "bubblewrap" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/libexec/xdg-desktop-portal && " .. p.install_root .. "/usr/libexec/xdg-desktop-portal --help")
  end,
}

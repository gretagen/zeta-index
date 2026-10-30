return {
  name    = "spice-gtk",
  version = "0.42-5-x86_64",
  summary = "gTK+ client library for SPICE",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/spice-gtk/spice-gtk-0.42-5-x86_64.pkg.tar.zst",
  sha256  = "92222c15b03db7b6785f7e63c161deb0f499fb0325031014b3785c2d45373c34",
  deps    = { "acl", "cairo", "gdk-pixbuf", "glib", "gst-plugins-base", "gst-plugins-good", "gstreamer", "gtk3", "libjson-glib", "libcacard", "libcap-ng", "libepoxy", "libjpeg-turbo", "libsasl", "libsoup3", "libusb", "libX11", "lz4", "openssl", "opus", "phodav", "pixman", "polkit", "spice-protocol", "usbredir", "wayland", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libspice-client-glib-2.0.so.8.8.2")
  end,
}

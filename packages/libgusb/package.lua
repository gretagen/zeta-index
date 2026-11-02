return {
  name    = "libgusb",
  version = "0.4.9",
  summary = "GObject wrapper for libusb-1.0",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libgusb/libgusb-0.4.9.tar.gz",
  sha256  = "2f65f378b7dacabce4f9a6c882167729e69a887fa41c6d3eb5a841795a95d8ed",
  deps    = { "glibc", "glib", "libjson-glib", "libusb", "gobject-introspection" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libgusb.so* | grep -q . && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/lib/pkgconfig pkg-config --exists gusb && test -f " .. p.install_root .. "/usr/share/gir-1.0/GUsb-1.0.gir")
  end,
}

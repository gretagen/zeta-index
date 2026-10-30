return {
  name    = "sane",
  version = "1.4.0-4-x86_64",
  summary = "scanner Access Now Easy",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/sane/sane-1.4.0-4-x86_64.pkg.tar.zst",
  sha256  = "3496d3e5b64539c497eb625ac3b3432c8eefc7cee4ec3421386068b27f197780",
  deps    = { "bash", "cairo", "glibc", "libgcc", "libpng", "libieee1284", "libstdc++", "net-snmp", "v4l-utils", "avahi", "curl", "glib", "libgphoto2", "libjpeg-turbo", "libtiff", "libusb", "libxml2", "poppler-glib", "systemd-libs" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libsane.so.1.4.0")
  end,
}

return {
  name    = "libcups",
  version = "2.4.19-2",
  summary = "CUPS printing library (cups.pc, dev-complete)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libcups/libcups-2.4.19-2.tar.gz",
  sha256  = "6099859cdedb24a98ccdadf8bf2cb55bdc5fa95c09fdfbfc3bc7049a644a95d3",
  deps    = { "glibc", "gnutls", "libpng", "libz", "avahi", "libusb", "acl", "openssl", "dbus", "pam" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libcups.so* | grep -q . && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/lib/pkgconfig pkg-config --exists cups && test -x " .. p.install_root .. "/usr/bin/cups-config")
  end,
}

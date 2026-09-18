return {
  name    = "networkmanager",
  version = "1.51.4",
  summary = "Network management daemon (wifi iwd+wpa_supplicant, dnsmasq, dhcpcd)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/networkmanager/networkmanager-1.51.4.tar.gz",
  sha256  = "1a15edef4ba3467af405867fe2619b1827d96e372c88b44d2b88f03ae20465be",
  deps    = { "glibc", "glib", "dbus", "libnl", "curl", "libndp", "libpsl", "systemd-libs", "libz", "iwd", "wpa_supplicant", "dnsmasq", "dhcpcd", "gobject-introspection", "polkit", "elogind", "libgudev", "ncurses", "newt", "nss" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/sbin/NetworkManager")
  end,
}

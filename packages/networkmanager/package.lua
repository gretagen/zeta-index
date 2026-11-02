return {
  name    = "networkmanager",
  version = "1.58.1",
  summary = "Network management daemon (wifi iwd+wpa_supplicant, dnsmasq, dhcpcd)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/networkmanager/networkmanager-1.58.1.tar.gz",
  sha256  = "774ed8e7a1a773e6913f50f4f95ae1f8ef2b9533c0c9fa6b3f62f15a84581662",
  deps    = { "glibc", "glib", "dbus", "libnl", "curl", "libndp", "libpsl", "systemd-libs", "libz", "iwd", "wpa_supplicant", "dnsmasq", "dhcpcd", "gobject-introspection", "polkit", "elogind", "libgudev", "ncurses", "newt", "nss" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/sbin/NetworkManager && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/lib/pkgconfig pkg-config --exists libnm && ! ls " .. p.install_root .. "/usr/lib/systemd 2>/dev/null | grep -q .")
  end,
}

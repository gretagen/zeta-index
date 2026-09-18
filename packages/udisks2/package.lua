return {
  name    = "udisks2",
  version = "2.11.2",
  summary = "Disk management service (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/udisks2/udisks2-2.11.2.pkg.tar.zst",
  sha256  = "4b6fa221f14a248cc86d0ea8e0380d09965305a38d3cb19aba318508fe61efdb",
  deps    = { "acl", "dbus", "glib", "libblockdev", "libgudev", "polkit", "systemd-libs", "util-linux-libs", "libuuid" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

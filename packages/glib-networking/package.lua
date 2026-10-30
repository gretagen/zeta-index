return {
  name    = "glib-networking",
  version = "2.90.1-1-x86_64",
  summary = "Network-related GIO modules (TLS, proxy)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/glib-networking/glib-networking-2.90.1-1-x86_64.pkg.tar.zst",
  sha256  = "6b9452217bb4bdff19929b3fc9deb7aea3383cfe74cddd6d0a77becc2803caab",
  deps    = { "glib", "glibc", "gnutls", "gsettings-desktop-schemas", "libproxy" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/gio/modules/libgiognomeproxy.so")
  end,
}

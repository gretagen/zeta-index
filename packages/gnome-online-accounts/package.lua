return {
  name    = "gnome-online-accounts",
  version = "3.58.1-1-x86_64",
  summary = "GNOME online accounts service (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-online-accounts/gnome-online-accounts-3.58.1-1-x86_64.pkg.tar.zst",
  sha256  = "751a57ff797a5109d32c7c04f53a0dcfe54429c72fd2d3a410c979437c87bbfd",
  deps    = { "dbus", "libdconf", "gcr-4", "glib", "glibc", "gtk4", "hicolor-icon-theme", "libjson-glib", "keyutils", "krb5", "libadwaita", "libgcc", "librest", "libsecret", "libsoup3", "libxml2", "libgoa" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/goa-daemon")
  end,
}

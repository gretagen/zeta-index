return {
  name    = "gnome-control-center",
  version = "51.1",
  summary = "GNOME Settings (control center)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gnome-control-center/gnome-control-center-51.1.tar.gz",
  sha256  = "dd3429c20a4cfd786d28f13e77f19a93c69439da7496534838c7863426dbbe5b",
  deps    = { "glibc", "glib", "gtk4", "gtk3", "libadwaita", "gnome-desktop", "gnome-settings-daemon", "accountsservice", "colord-gtk", "colord", "libcups", "gnome-bluetooth", "gnome-online-accounts", "gsound", "libgtop", "libnma", "libpwquality", "krb5", "ModemManager", "samba", "udisks2", "shared-mime-info", "tecla", "blueprint-compiler", "ibus", "gobject-introspection", "upower", "gsettings-desktop-schemas", "libwacom", "libsecret", "polkit", "gcr-4", "networkmanager" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/gnome-control-center && test -x " .. p.install_root .. "/usr/libexec/gnome-control-center-search-provider && " .. p.install_root .. "/usr/bin/gnome-control-center --version | grep -q 51")
  end,
}

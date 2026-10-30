return {
  name    = "malcontent",
  version = "0.14.0-4-x86_64",
  summary = "parental control support for applications",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/malcontent/malcontent-0.14.0-4-x86_64.pkg.tar.zst",
  sha256  = "97562adaba7efddc377617e3306ba2a82b7223aaf8cc39b94777e44dd5f0e384",
  deps    = { "accountsservice", "appstream", "dbus", "flatpak", "glib", "glibc", "graphene", "gtk4", "hicolor-icon-theme", "libjson-glib", "libadwaita", "libgcc", "libgsystemservice", "libsoup3", "pam", "pango", "polkit", "python", "python-gobject", "libmalcontent" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libmalcontent-ui-1.so.0.14.0")
  end,
}

return {
  name    = "gnome-desktop",
  version = "51.0-1-x86_64",
  summary = "GNOME desktop library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-desktop/gnome-desktop-51.0-1-x86_64.pkg.tar.zst",
  sha256  = "d4f90fd537879074c2dda14327124317d5f461479c8f7c3ed506139cb143de7d",
  deps    = { "bubblewrap", "cairo", "gdk-pixbuf", "glib", "glibc", "gsettings-desktop-schemas", "iso-codes", "libgcc", "libseccomp", "xkbcommon", "systemd-libs", "xkeyboard-config", "gnome-desktop-common", "gtk3" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgnome-desktop-3.so")
  end,
}

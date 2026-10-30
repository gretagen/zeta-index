return {
  name    = "gnome-desktop-4",
  version = "51.0-1-x86_64",
  summary = "GNOME desktop library for GTK 4 (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-desktop-4/gnome-desktop-4-51.0-1-x86_64.pkg.tar.zst",
  sha256  = "43feb36157d574f94a71a77d4909a9d4d4dbc5d5f2281ddde2916259f9461db4",
  deps    = { "bubblewrap", "cairo", "gdk-pixbuf", "glib", "glibc", "gsettings-desktop-schemas", "iso-codes", "libgcc", "libseccomp", "xkbcommon", "systemd-libs", "xkeyboard-config", "gnome-desktop-common", "gtk4" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgnome-desktop-4.so")
  end,
}

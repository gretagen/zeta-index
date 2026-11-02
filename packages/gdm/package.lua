return {
  name    = "gdm",
  version = "51.1.1",
  summary = "GNOME Display Manager (libgdm + Gdm typelib for gnome-shell)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gdm/gdm-51.1.1.tar.gz",
  sha256  = "1bb5fb371b1cbd70b2d7bfbb7af7eb8341fa49f564c28ead9abc931000ea2a65",
  deps    = { "glibc", "glib", "accountsservice", "libdconf", "libcanberra", "polkit", "dbus", "elogind", "gobject-introspection", "libgudev", "libjson-glib", "keyutils" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libgdm.so* | grep -q . && test -f " .. p.install_root .. "/usr/lib/girepository-1.0/Gdm-1.0.typelib && test -x " .. p.install_root .. "/usr/sbin/gdm && ! find " .. p.install_root .. " -name '*.service' -path '*systemd*' | grep -q .")
  end,
}

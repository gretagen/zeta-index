return {
  name    = "gnome-desktop",
  version = "51.0",
  summary = "Desktop core library for GNOME (background, thumbnails)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gnome-desktop/gnome-desktop-51.0.tar.gz",
  sha256  = "150c520996b5ca4e28d38fdea2368888dab7cf776a191433c9c56cbe1aa93659",
  deps    = { "glibc", "glib", "gtk4", "gtk3", "libseccomp", "gsettings-desktop-schemas", "iso-codes", "gobject-introspection" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libgnome-desktop-4.so* | grep -q . && test -f " .. p.install_root .. "/usr/share/gir-1.0/GnomeDesktop-4.0.gir && ls " .. p.install_root .. "/usr/lib/libgnome-bg-4.so* | grep -q .")
  end,
}

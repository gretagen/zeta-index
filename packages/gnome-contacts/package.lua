return {
  name    = "gnome-contacts",
  version = "51.0-1-x86_64",
  summary = "contacts Manager for GNOME",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-contacts/gnome-contacts-51.0-1-x86_64.pkg.tar.zst",
  sha256  = "d708bdb645d92901d44bd1ef4baa68ad93447d852b4977be2d0feab57585d09c",
  deps    = { "libdconf", "evolution-data-server", "folks", "gdk-pixbuf", "glib", "glibc", "glycin", "glycin-gtk4", "gnome-online-accounts", "gst-plugin-gtk4", "gst-plugin-pipewire", "gst-plugins-base", "gstreamer", "gtk4", "hicolor-icon-theme", "libadwaita", "libgcc", "libgee", "libgoa", "libportal", "libportal-gtk4", "pango", "qrencode" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/gnome-contacts")
  end,
}

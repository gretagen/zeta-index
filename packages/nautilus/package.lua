return {
  name    = "nautilus",
  version = "51.1-1-x86_64",
  summary = "default file manager for GNOME",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/nautilus/nautilus-51.1-1-x86_64.pkg.tar.zst",
  sha256  = "fd53302287620a95abb30e305843be3df1eef1365f68c4f9dac1285743037ec9",
  deps    = { "cairo", "libdconf", "gdk-pixbuf", "gexiv2", "glib", "glibc", "glycin", "glycin-gtk4", "gnome-autoar", "gnome-desktop-4", "graphene", "gst-plugins-base-libs", "gstreamer", "gtk4", "gvfs", "hicolor-icon-theme", "icu", "libadwaita", "libcloudproviders", "libgcc", "libportal", "libportal-gtk4", "libX11", "localsearch", "pango", "tinysparql", "wayland", "xdg-user-dirs-gtk", "libnautilus-extension" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/nautilus")
  end,
}

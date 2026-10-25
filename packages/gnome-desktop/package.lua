return {
  name = "gnome-desktop",
  version = "44.5",
  summary = "Libgnome-desktop library and data files",
  url = "https://download.gnome.org/sources/gnome-desktop/44/gnome-desktop-44.5.tar.xz",
  sha256 = "placeholder",
  deps = { "glib", "gsettings-desktop-schemas", "gtk3", "libxkbcommon" },
  archive = { strip = 1 },
}

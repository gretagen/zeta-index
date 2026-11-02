return {
  name    = "gnome-settings-daemon",
  version = "51.1",
  summary = "GNOME settings daemons (color, power, media keys)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gnome-settings-daemon/gnome-settings-daemon-51.1.tar.gz",
  sha256  = "94e72cff7a2506514b21f2f3b26b89d5ea7c50fea9e98b698758ad6df2b32f17",
  deps    = { "glibc", "glib", "gtk4", "gtk3", "gnome-desktop", "geoclue2", "geocode-glib", "libgweather-4", "libcanberra", "libnotify", "libwacom", "alsa-lib", "fontconfig", "gcr-4", "upower", "pulseaudio", "networkmanager", "gsettings-desktop-schemas", "gobject-introspection" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/gnome-settings-daemon-51/libgsd.so && test -f " .. p.install_root .. "/usr/share/glib-2.0/schemas/org.gnome.settings-daemon.plugins.color.gschema.xml && test -f " .. p.install_root .. "/usr/share/glib-2.0/schemas/org.gnome.settings-daemon.plugins.power.gschema.xml && ! ls " .. p.install_root .. "/usr/lib/systemd 2>/dev/null | grep -q .")
  end,
}

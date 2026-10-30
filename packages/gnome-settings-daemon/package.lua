return {
  name    = "gnome-settings-daemon",
  version = "51.1-1-x86_64",
  summary = "gNOME Settings Daemon",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-settings-daemon/gnome-settings-daemon-51.1-1-x86_64.pkg.tar.zst",
  sha256  = "de17308f06588b45270dc6dbd03238f915de80e80ec9d749939c5bb97d45433c",
  deps    = { "alsa-lib", "bash", "libdconf", "fontconfig", "gcr-4", "geoclue", "geocode-glib", "glib", "glibc", "gnome-desktop-4", "gsettings-desktop-schemas", "gtk4", "libcanberra", "libcolord", "libcups", "libgcc", "libgudev", "libgweather-4", "libmm-glib", "libnm", "libnotify", "libp11-kit", "libpulse", "libX11", "libXfixes", "polkit", "pulseaudio", "systemd-libs", "upower" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/gnome-settings-daemon-51/libgsd.so")
  end,
}

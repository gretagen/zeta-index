return {
  name    = "mutter",
  version = "51.1-1-x86_64",
  summary = "window manager and compositor for GNOME",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mutter/mutter-51.1-1-x86_64.pkg.tar.zst",
  sha256  = "aeed82eb1346b2422613b29b10b1599e3e055528cd47a48170c85ee12cfa739e",
  deps    = { "at-spi2-core", "cairo", "colord", "libdconf", "egl-wayland", "fontconfig", "fribidi", "gdk-pixbuf", "glib", "glibc", "glycin", "gnome-desktop-4", "gnome-settings-daemon", "graphene", "gsettings-desktop-schemas", "gtk4", "harfbuzz", "iio-sensor-proxy", "lcms2", "libcanberra", "libcolord", "libdisplay-info", "libdrm", "libei", "libgcc", "gobject-introspection-runtime", "libglvnd", "libgudev", "libinput", "pipewire", "libsysprof-capture", "libwacom", "libX11", "libXau", "libxcb", "libXcomposite", "libXcursor", "libXdamage", "libXext", "libXfixes", "libXi", "libXinerama", "xkbcommon", "libXrandr", "mesa-full", "pango", "pixman", "python", "python-argcomplete", "python-dbus", "python-gobject", "startup-notification", "systemd-libs", "wayland", "xwayland" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/mutter")
  end,
}

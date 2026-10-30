return {
  name    = "gnome-shell",
  version = "51.1-1-x86_64",
  summary = "next generation desktop shell",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-shell/gnome-shell-51.1-1-x86_64.pkg.tar.zst",
  sha256  = "c0e8e344a1543dd576a44ec00b47762921bb30bb510f05d481e667d0e93cc4df",
  deps    = { "accountsservice", "at-spi2-core", "bash", "cairo", "libdconf", "gcr-4", "gdk-pixbuf", "gjs", "glib", "glibc", "gnome-autoar", "gnome-desktop-4", "gnome-session", "gnome-settings-daemon", "graphene", "gsettings-desktop-schemas", "gtk4", "hicolor-icon-theme", "ibus", "libjson-glib", "libadwaita", "libcanberra", "libgcc", "gdm", "libglvnd", "libgweather-4", "libibus", "libical", "libnm", "libnma-gtk4", "pipewire", "libpulse", "libsecret", "libsoup3", "libX11", "libXext", "libXfixes", "mutter", "pango", "polkit", "systemd-libs", "unzip", "upower", "webkitgtk-6.0" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/gnome-shell")
  end,
}

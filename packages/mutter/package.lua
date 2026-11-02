return {
  name    = "mutter",
  version = "51.1",
  summary = "GNOME Shell compositor library and mutter binary",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mutter/mutter-51.1.tar.gz",
  sha256  = "db3d42cbe6e89a4d476d3429bee29b3796e63092640ba38da440aa5bcea3cb81",
  deps    = { "glibc", "glib", "gtk4", "graphene", "wayland", "libinput", "xkbcommon", "libdrm", "pipewire", "libei", "libdisplay-info", "gnome-settings-daemon", "gsettings-desktop-schemas", "at-spi2-core", "gobject-introspection", "upower", "gnutls", "libadwaita", "colord", "mesa-drivers", "lcms2", "startup-notification" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libmutter-51.so* | grep -q . && test -x " .. p.install_root .. "/usr/bin/mutter && test -x " .. p.install_root .. "/usr/bin/gdctl && LD_LIBRARY_PATH=" .. p.install_root .. "/usr/lib:" .. p.install_root .. "/usr/lib/mutter-51 " .. p.install_root .. "/usr/bin/mutter --version | grep -q 51")
  end,
}

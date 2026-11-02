return {
  name    = "gnome-bluetooth",
  version = "47.2",
  summary = "GNOME Bluetooth management (libgnome-bluetooth + app)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gnome-bluetooth/gnome-bluetooth-47.2.tar.gz",
  sha256  = "f252a4cd73e1b70cf0d493e38f04ae042d17b7961f5f963a194dfca8d465beec",
  deps    = { "glibc", "glib", "gtk4", "gnome-desktop", "gobject-introspection", "libnotify", "networkmanager", "libadwaita", "gsound", "upower" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/bluetooth-sendto && ls " .. p.install_root .. "/usr/lib/pkgconfig/gnome-bluetooth-3.0.pc | grep -q .")
  end,
}

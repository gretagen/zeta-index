return {
  name    = "gnome-bluetooth-3.0",
  version = "47.2-1-x86_64",
  summary = "GNOME Bluetooth support library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-bluetooth-3.0/gnome-bluetooth-3.0-47.2-1-x86_64.pkg.tar.zst",
  sha256  = "be2664e29a0e0c97d58fe4bc0dfcf1a44da008c84cf691246897fe48b85eef2a",
  deps    = { "bluez", "bluez-obex", "glib", "glibc", "gsound", "gtk4", "libgcc", "libadwaita", "libnotify", "systemd-libs", "upower" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgnome-bluetooth-3.0.so")
  end,
}

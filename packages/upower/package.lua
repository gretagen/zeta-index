return {
  name    = "upower",
  version = "1.91.5",
  summary = "Power device manager (libupower-glib, gir-enabled)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/upower/upower-1.91.5.tar.gz",
  sha256  = "45bc156d57e328e89ba2765e840f7ecbda7784a2842cdc87ff77661ed990f966",
  deps    = { "glibc", "glib", "libgudev", "libusb", "gobject-introspection", "polkit" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libupower-glib.so* | grep -q . && test -x " .. p.install_root .. "/usr/bin/upower && test -f " .. p.install_root .. "/usr/share/gir-1.0/UPowerGlib-1.0.gir && test -f " .. p.install_root .. "/usr/lib/girepository-1.0/UPowerGlib-1.0.typelib && ! ls " .. p.install_root .. "/usr/lib/systemd 2>/dev/null | grep -q .")
  end,
}

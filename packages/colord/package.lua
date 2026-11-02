return {
  name    = "colord",
  version = "1.4.8",
  summary = "Color management daemon and library (libcolord)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/colord/colord-1.4.8.tar.gz",
  sha256  = "52ca700eaaaf417f73d02a2b5920011bcea5d7511e5fd4967cdd308ad410de9b",
  deps    = { "glibc", "glib", "dbus", "lcms2", "libgudev", "libgusb", "polkit", "gobject-introspection", "sqlite" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libcolord.so* | grep -q . && test -x " .. p.install_root .. "/usr/bin/colormgr && grep -q org.freedesktop.ColorManager " .. p.install_root .. "/usr/share/dbus-1/system-services/org.freedesktop.ColorManager.service && ! ls " .. p.install_root .. "/usr/lib/systemd 2>/dev/null | grep -q .")
  end,
}

return {
  name    = "mate-sensors-applet",
  version = "1.28.0",
  summary = "Sensors applet for MATE",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mate-sensors-applet/mate-sensors-applet-1.28.0.tar.gz",
  sha256  = "174ffebf15c49b4e40c3396dae29705d4b339f5aa5859dd13c4ba64bcef29851",
  deps    = { "glibc", "glib", "gtk3", "udisks2", "libnotify", "lm-sensors", "mate-panel", "gettext" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\"")
  end,
}

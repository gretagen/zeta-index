return {
  name    = "mate-system-monitor",
  version = "1.28.1",
  summary = "System monitor for MATE",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mate-system-monitor/mate-system-monitor-1.28.1.tar.gz",
  sha256  = "9f4c1bc2e15097fb4c3e704520acf86fb8012f78ca0407f4acce3f399feed4d8",
  deps    = { "librsvg", "gdkmm", "glibc", "glib", "gtk3", "gtkmm3", "libgtop", "libwnck3", "gettext", "polkit" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\" && test -x " .. p.install_root .. "/usr/bin/mate-system-monitor")
  end,
}

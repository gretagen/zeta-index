return {
  name    = "mate-screensaver",
  version = "1.28.0",
  summary = "Screen saver for MATE",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mate-screensaver/mate-screensaver-1.28.0.tar.gz",
  sha256  = "17113f91c47e11a770305cfbd1f9640276aa0eb2fe159cc9e32db6f8faeaf76b",
  deps    = { "libxss", "libXxf86vm", "glibc", "glib", "gtk3", "mate-panel", "libmatekbd", "gettext", "libnotify", "mate-desktop", "mate-menus", "mate-session-manager" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\" && test -x " .. p.install_root .. "/usr/bin/mate-screensaver")
  end,
}

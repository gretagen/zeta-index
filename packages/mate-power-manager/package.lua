return {
  name    = "mate-power-manager",
  version = "1.28.1",
  summary = "Power manager for MATE",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mate-power-manager/mate-power-manager-1.28.1.tar.gz",
  sha256  = "a20b4dc30c0c57a54097a742d6c419c8ed968ece425446aa085a0c51d824208e",
  deps    = { "startup-notification", "mate-panel", "mate-desktop", "glibc", "glib", "gtk3", "dbus-glib", "gettext", "libcanberra", "libnotify", "upower", "polkit", "libsecret" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\" && test -x " .. p.install_root .. "/usr/bin/mate-power-manager")
  end,
}

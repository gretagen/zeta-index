return {
  name    = "mate-settings-daemon",
  version = "1.28.0",
  summary = "Settings daemon for MATE",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mate-settings-daemon/mate-settings-daemon-1.28.0.tar.gz",
  sha256  = "37d97404acd2fdec53c02be43c1030f5e71eb644883dff508b7ab164b0a6aeab",
  deps    = { "libxklavier", "startup-notification", "libdconf", "libSM", "libICE", "glibc", "glib", "gtk3", "dbus-glib", "libcanberra", "libmatekbd", "libmatemixer", "libnotify", "mate-desktop", "nss", "polkit", "gettext" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\" && test -x " .. p.install_root .. "/usr/libexec/mate-settings-daemon")
  end,
}

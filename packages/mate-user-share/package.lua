return {
  name    = "mate-user-share",
  version = "1.28.0",
  summary = "User file sharing for MATE",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mate-user-share/mate-user-share-1.28.0.tar.gz",
  sha256  = "8db27fdc6dd8f9bccdfa64be511c7586eefa43075a4b97d09cd965a914718be3",
  deps    = { "caja", "libnotify", "dbus-glib", "libcanberra", "libSM", "libICE", "glibc", "gtk3", "gettext" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\"")
  end,
}

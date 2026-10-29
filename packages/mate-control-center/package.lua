return {
  name    = "mate-control-center",
  version = "1.28.0",
  summary = "Control center for MATE",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mate-control-center/mate-control-center-1.28.0.tar.gz",
  sha256  = "1b5cf7c9ac95345902c5679c4a56991f72329211165a78f418d065d62bb6fce6",
  deps    = { "libdbusmenu-glib", "libxss", "glibc", "glib", "gtk3", "mate-menus", "mate-settings-daemon", "marco", "mate-desktop", "gettext", "accountsservice", "mate-panel", "libcanberra", "udisks2", "libayatana-appindicator" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\" && test -x " .. p.install_root .. "/usr/bin/mate-control-center")
  end,
}

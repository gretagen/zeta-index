return {
  name    = "mate-session-manager",
  version = "1.28.0",
  summary = "Session manager for MATE",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mate-session-manager/mate-session-manager-1.28.0.tar.gz",
  sha256  = "370f9646d55bcd48ed918c6cfb9ce236da958f951fa4a42827ca43290a64af02",
  deps    = { "egl", "glibc", "dbus-glib", "gettext", "gtk3", "libSM", "mate-desktop" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\" && test -x " .. p.install_root .. "/usr/bin/mate-session")
  end,
}

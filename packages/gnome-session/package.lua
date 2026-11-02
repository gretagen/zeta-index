return {
  name    = "gnome-session",
  version = "51.0",
  summary = "GNOME session manager (init-agnostic wiring)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gnome-session/gnome-session-51.0.tar.gz",
  sha256  = "702518d7ae10a36de9c7b5f87a940983b6cc464cb766b81642271d88af9dbccb",
  deps    = { "glibc", "glib", "elogind", "gnome-desktop", "json-glib", "mesa", "upower", "gtk4", "dbus" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/gnome-session && grep -q dbus-run-session " .. p.install_root .. "/usr/share/wayland-sessions/gnome.desktop && ! find " .. p.install_root .. " -name '*.service' -o -name '*.target' | grep -q .")
  end,
}

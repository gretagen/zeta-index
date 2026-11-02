return {
  name    = "gnome-session",
  version = "51.0",
  summary = "GNOME session manager (init-agnostic wiring)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gnome-session/gnome-session-51.0.tar.gz",
  sha256  = "babaae77b919203e6922b1e7a298ab4c84f2b23a220f92081d000886f0ab8200",
  deps    = { "glibc", "glib", "elogind", "gnome-desktop", "libjson-glib", "mesa", "upower", "gtk4", "dbus" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/gnome-session && grep -q dbus-run-session " .. p.install_root .. "/usr/share/wayland-sessions/gnome.desktop && ! find " .. p.install_root .. " -name '*.service' -o -name '*.target' | grep -q .")
  end,
}

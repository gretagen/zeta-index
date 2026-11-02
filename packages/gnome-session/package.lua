return {
  name    = "gnome-session",
  version = "51.0",
  summary = "GNOME session manager (init-agnostic wiring)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gnome-session/gnome-session-51.0.tar.gz",
  sha256  = "b70639fd5f7d4601a9c55ec2ee43cf2fca3799c6ad424344a239e9371101d2f4",
  deps    = { "glibc", "glib", "elogind", "gnome-desktop", "libjson-glib", "mesa-drivers", "upower", "gtk4", "dbus" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/gnome-session && grep -q dbus-run-session " .. p.install_root .. "/usr/share/wayland-sessions/gnome.desktop && ! find " .. p.install_root .. " -name '*.service' -o -name '*.target' | grep -q .")
  end,
}

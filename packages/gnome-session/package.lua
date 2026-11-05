return {
  name    = "gnome-session",
  version = "51.0-2",
  summary = "GNOME session manager (init-agnostic wiring)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gnome-session/gnome-session-51.0-2.tar.gz",
  sha256  = "94790a8982d7946ee418476df7444c47c7e37b07743c208fd8a36b9d3a33c50f",
  deps    = { "glibc", "glib", "elogind", "gnome-desktop", "libjson-glib", "mesa-drivers", "upower", "gtk4", "dbus" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/gnome-session && bash -n " .. p.install_root .. "/usr/bin/gnome-wayland-session && grep -q '^Exec=/usr/bin/gnome-wayland-session$' " .. p.install_root .. "/usr/share/wayland-sessions/gnome.desktop && ! find " .. p.install_root .. " -name '*.service' -o -name '*.target' | grep -q .")
  end,
}

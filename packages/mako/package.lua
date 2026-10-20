return {
  name    = "mako",
  version = "1.11.0",
  summary = "Lightweight Wayland notification daemon",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mako/mako-1.11.0.tar.gz",
  sha256  = "73f6ae9ced55ada114a637b6441357e3bd9c9a81f001c9b6122886466e711191",
  deps    = { "glibc", "wayland", "cairo", "pango", "gdk-pixbuf", "glib", "systemd-libs" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/mako && test -x " .. p.install_root .. "/usr/bin/makoctl && test -f " .. p.install_root .. "/usr/share/dbus-1/services/fr.emersion.mako.service && " .. p.install_root .. "/usr/bin/mako --help 2>&1 | grep -q 'Usage: mako'")
  end,
}

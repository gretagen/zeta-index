return {
  name    = "ibus",
  version = "1.5.34",
  summary = "Intelligent Input Bus (input method framework)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/ibus/ibus-1.5.34.tar.gz",
  sha256  = "e59e618ca1699086c646839b23804175dd44b2f348e990b05ebc93e4b7d24340",
  deps    = { "glibc", "glib", "gtk4", "gtk3", "gobject-introspection", "libxml2", "libnotify", "python", "libdbusmenu-glib", "libdbusmenu-gtk3", "libdconf" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/ibus && ls " .. p.install_root .. "/usr/lib/libibus-1.0.so* | grep -q . && test -f " .. p.install_root .. "/usr/share/gir-1.0/IBus-1.0.gir")
  end,
}

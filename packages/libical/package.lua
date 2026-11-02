return {
  name    = "libical",
  version = "4.0.7-2",
  summary = "iCalendar library (core + GLib bindings, gir-enabled)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libical/libical-4.0.7-2.tar.gz",
  sha256  = "eec8886f93ef93611befa6f5f952e5c0b54ea218b9280f882ddfbbd170b1d0f2",
  deps    = { "glibc", "gcc", "libgcc", "libstdc++", "glib", "libxml2", "gobject-introspection", "icu" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libical.so* | grep -q . && ls " .. p.install_root .. "/usr/lib/libical-glib.so* | grep -q . && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/lib/pkgconfig pkg-config --exists libical-glib && test -f " .. p.install_root .. "/usr/share/gir-1.0/ICalGLib-4.0.gir")
  end,
}

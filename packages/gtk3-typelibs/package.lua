return {
  name    = "gtk3-typelibs",
  version = "3.24.50",
  summary = "GIR typelibs for the GLib/GTK3 stack (PyGObject bindings)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gtk3-typelibs/gtk3-typelibs-3.24.50.tar.gz",
  sha256  = "932ed36d0b7766240bb400e0b22105d48fdbd3c01a327dbe2a38f8197770b329",
  deps    = { "glibc", "glib", "gtk3", "pango", "gdk-pixbuf", "at-spi2-core" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("GI_TYPELIB_PATH=$(echo " .. p.install_root .. "/usr/lib/girepository-1.0) python3 -c \"import gi; gi.require_version('Gtk','3.0'); from gi.repository import Gtk, Gdk, GdkPixbuf, GLib\" && test -f " .. p.install_root .. "/usr/lib/girepository-1.0/GObject-2.0.typelib")
  end,
}

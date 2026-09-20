return {
  name    = "python-gobject",
  version = "3.56.3",
  summary = "Python bindings for GLib/GObject/GIO/GTK",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/python-gobject/python-gobject.pkg.tar.zst",
  sha256  = "291cac7fc55c0e9949848cb3f98ff75a3d2e73520f1f11f4334dff1a3f332b58",
  deps    = { "glib2", "gobject-introspection-runtime", "libffi", "python", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}

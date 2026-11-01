return {
  name    = "libjson-glib",
  version = "1.10.0-2",
  summary = "GLib-based JSON serialization library (gir-enabled)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libjson-glib/libjson-glib-1.10.0-2.tar.gz",
  sha256  = "9ce8b3f867ffcedf65f805b7b24dedcd3c404105a6720ac4e52f553e92a75773",
  deps    = { "glibc", "glib", "gobject-introspection" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libjson-glib-1.0.so.0 && test -f " .. p.install_root .. "/usr/share/gir-1.0/Json-1.0.gir && test -f " .. p.install_root .. "/usr/lib/girepository-1.0/Json-1.0.typelib")
  end,
}

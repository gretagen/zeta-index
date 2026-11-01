return {
  name    = "glib",
  version = "2.90.1",
  summary = "Low-level core utility library (gir-enabled)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/glib/glib-2.90.1.tar.gz",
  sha256  = "89afd08cdb843816a0879d552210f0f7fcd4598d955db17997d2a026ed095332",
  deps    = { "glibc", "libffi", "libz", "pcre2", "libelf", "util-linux", "gobject-introspection", "gettext" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libglib-2.0.so.0 && test -f " .. p.install_root .. "/usr/lib/girepository-1.0/GLib-2.0.typelib && test -x " .. p.install_root .. "/usr/bin/glib-compile-schemas && " .. p.install_root .. "/usr/bin/glib-compile-schemas --version | grep -q 2.90")
  end,
}

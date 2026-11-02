return {
  name    = "libsoup3",
  version = "3.6.6-2",
  summary = "HTTP client/server library for GLib (gir-enabled)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libsoup3/libsoup3-3.6.6-2.tar.gz",
  sha256  = "f502f6b4c132ef57e85f35a45d66c6ceafd8cc1c1481fc05f332e27f694eb924",
  deps    = { "glibc", "libpsl", "glib", "libz", "nghttp2", "gobject-introspection", "sqlite", "krb5" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libsoup-3.0.so.0 && test -f " .. p.install_root .. "/usr/share/gir-1.0/Soup-3.0.gir && test -f " .. p.install_root .. "/usr/lib/girepository-1.0/Soup-3.0.typelib")
  end,
}

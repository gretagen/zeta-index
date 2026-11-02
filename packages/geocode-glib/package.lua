return {
  name    = "geocode-glib",
  version = "3.26.4",
  summary = "Geocoding library using Nominatim (GNOME)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/geocode-glib/geocode-glib-3.26.4.tar.gz",
  sha256  = "7d79608a91d66ea12d417e6fed549f9e8123071775d8243b92080fab35bdf250",
  deps    = { "glibc", "glib", "libsoup3", "libjson-glib", "gobject-introspection" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgeocode-glib-2.so.0 && test -f " .. p.install_root .. "/usr/share/gir-1.0/GeocodeGlib-2.0.gir")
  end,
}

return {
  name    = "libgweather-4",
  version = "4.6.0",
  summary = "Weather and geolocation library (GNOME)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libgweather-4/libgweather-4-4.6.0.tar.gz",
  sha256  = "a893639d4bf96f7701f11cfa62442cbaa24d9e2b7428eb15bd24f5e19bb03d62",
  deps    = { "glibc", "glib", "libsoup3", "gsettings-desktop-schemas", "gweather-locations", "iso-codes", "gobject-introspection", "libxml2", "geocode-glib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgweather-4.so.0 && test -f " .. p.install_root .. "/usr/share/gir-1.0/GWeather-4.0.gir && test -f " .. p.install_root .. "/usr/lib/girepository-1.0/GWeather-4.0.typelib")
  end,
}

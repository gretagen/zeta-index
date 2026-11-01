return {
  name    = "gweather-locations",
  version = "2026.2",
  summary = "Geographical locations database for GWeather",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gweather-locations/gweather-locations-2026.2.tar.gz",
  sha256  = "c604ce75cbc54c37bd2931e6a83798b37f96e9f66c98bf1184ff3e91d602cd87",
  deps    = { "glibc", "glib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/gweather-locations/Locations.bin && test -f " .. p.install_root .. "/usr/share/pkgconfig/gweather-locations.pc && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/share/pkgconfig pkg-config --exists gweather-locations && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/share/pkgconfig pkg-config --variable=locations_db gweather-locations | grep -q Locations.bin")
  end,
}

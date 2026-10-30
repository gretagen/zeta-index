return {
  name    = "gweather-locations",
  version = "2026.2-1-x86_64",
  summary = "Location database for libgweather",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gweather-locations/gweather-locations-2026.2-1-x86_64.pkg.tar.zst",
  sha256  = "0ac95d70e92dee0cb35b710cd0fe1dc2f571a0e8a3a369835e5bf666baa7014f",
  deps    = {  },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/gweather-locations/Locations.bin")
  end,
}

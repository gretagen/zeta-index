return {
  name    = "geoip-database",
  version = "20260204-1-any",
  summary = "GeoIP legacy databases (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/geoip-database/geoip-database-20260204-1-any.pkg.tar.zst",
  sha256  = "031c96a97246c85b0b6c58e4aef944f466bb269e52e384b1284b3893ffc90f0a",
  deps    = {},
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/GeoIP/GeoIP.dat")
  end,
}

return {
  name    = "geoip",
  version = "1.6.12-3-x86_64",
  summary = "Non-DNS IP-to-country resolver library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/geoip/geoip-1.6.12-3-x86_64.pkg.tar.zst",
  sha256  = "f89880602135e4dae2b650d5e3239e53762064336226e5b9416957a561726569",
  deps    = { "glibc", "geoip-database", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libGeoIP.so.1")
  end,
}

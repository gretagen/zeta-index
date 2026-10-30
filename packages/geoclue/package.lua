return {
  name    = "geoclue",
  version = "2.8.2-2-x86_64",
  summary = "Location information service for GNOME (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/geoclue/geoclue-2.8.2-2-x86_64.pkg.tar.zst",
  sha256  = "740436587c28c8deaccd116e3e07319a62931b63fd2c9d23d03709bba94d30e5",
  deps    = { "avahi", "glib", "glibc", "libjson-glib", "libgcc", "libmm-glib", "libsoup3" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgeoclue-2.so")
  end,
}

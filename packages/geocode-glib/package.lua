return {
  name    = "geocode-glib",
  version = "3.26.4-6-x86_64",
  summary = "Geocoding library for GNOME (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/geocode-glib/geocode-glib-3.26.4-6-x86_64.pkg.tar.zst",
  sha256  = "999ee47327f610ea80776af492ea589eb75b1ca444f8c806b818ef2c7163f44f",
  deps    = { "glib", "glibc", "hicolor-icon-theme", "libjson-glib", "libgcc", "libsoup3" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgeocode-glib-2.so")
  end,
}

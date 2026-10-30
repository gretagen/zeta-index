return {
  name    = "libgweather-4",
  version = "4.6.0-1-x86_64",
  summary = "GNOME weather information library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libgweather-4/libgweather-4-4.6.0-1-x86_64.pkg.tar.zst",
  sha256  = "6cf6c7e5de4e2a7b69740299a56047506e8f27ac85b98111b719f45ec98af169",
  deps    = { "libdconf", "geocode-glib", "glib", "glibc", "gweather-locations", "libjson-glib", "libgcc", "libsoup3", "libxml2" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgweather-4.so")
  end,
}

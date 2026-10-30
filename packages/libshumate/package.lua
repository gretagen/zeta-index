return {
  name    = "libshumate",
  version = "1.7.0-1-x86_64",
  summary = "map widget for GTK 4",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libshumate/libshumate-1.7.0-1-x86_64.pkg.tar.zst",
  sha256  = "74edd95987a2b000bf18017bbcc0d47b9dd91fda39ab86ee1d46a58fb9ee7842",
  deps    = { "cairo", "gdk-pixbuf", "glib", "glibc", "graphene", "gtk4", "libjson-glib", "libgcc", "libsoup3", "libsysprof-capture", "pango", "protobuf-c", "sqlite" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libshumate-1.0.so.1.0")
  end,
}

return {
  name    = "papers",
  version = "51.1-1-x86_64",
  summary = "document viewer for PDF and other document formats aimed at the GNOME desktop",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/papers/papers-51.1-1-x86_64.pkg.tar.zst",
  sha256  = "3870074d36ebef72c5d888a4bebd92efde62204c0659b6680dcc182e2a0e3e61",
  deps    = { "cairo", "libdconf", "djvulibre", "exempi", "gdk-pixbuf", "glib", "glibc", "graphene", "gtk4", "gtksourceview5", "hicolor-icon-theme", "libadwaita", "libarchive", "libgcc", "libnautilus-extension", "libspelling", "libtiff", "pango", "poppler-glib" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/papers")
  end,
}

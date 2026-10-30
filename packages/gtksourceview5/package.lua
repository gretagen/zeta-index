return {
  name    = "gtksourceview5",
  version = "5.22.0-1-x86_64",
  summary = "a text widget adding syntax highlighting and more to GNOME",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gtksourceview5/gtksourceview5-5.22.0-1-x86_64.pkg.tar.zst",
  sha256  = "757f385bfd457b91dd0856d3b543d2dd35e60bef84ec7f15761a4503df4e26b4",
  deps    = { "cairo", "fontconfig", "fribidi", "gdk-pixbuf", "glib", "glibc", "graphene", "gtk4", "hicolor-icon-theme", "libgcc", "libxml2", "pango", "pcre2" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgtksourceview-5.so.0.0.0")
  end,
}

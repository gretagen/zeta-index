return {
  name    = "libspelling",
  version = "0.4.10-2-x86_64",
  summary = "spellcheck library for GTK 4",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libspelling/libspelling-0.4.10-2-x86_64.pkg.tar.zst",
  sha256  = "4bde1c4c6ec53418196f17665051abeb7f2d81902df65fd365d0081ef4ac68e9",
  deps    = { "enchant", "glib", "glibc", "gtk4", "gtksourceview5", "icu", "libgcc", "pango" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libspelling-1.so.2.0.0")
  end,
}

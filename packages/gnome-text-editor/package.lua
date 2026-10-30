return {
  name    = "gnome-text-editor",
  version = "51.0-1-x86_64",
  summary = "a simple text editor for the GNOME desktop",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-text-editor/gnome-text-editor-51.0-1-x86_64.pkg.tar.zst",
  sha256  = "431d9433e942d65d3092738d18214a1156372684277323b06ab895237761b7f3",
  deps    = { "libdconf", "editorconfig-core-c", "glib", "glibc", "gtk4", "gtksourceview5", "hicolor-icon-theme", "libadwaita", "libgcc", "libspelling", "pango" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/gnome-text-editor")
  end,
}

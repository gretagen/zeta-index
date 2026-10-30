return {
  name    = "loupe",
  version = "51.1-1-x86_64",
  summary = "a simple image viewer for GNOME",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/loupe/loupe-51.1-1-x86_64.pkg.tar.zst",
  sha256  = "8d161b28ce4d1f7800e4a6a00c05d1e324bbc4d9de27d37f219df824c3654804",
  deps    = { "bubblewrap", "cairo", "libdconf", "fontconfig", "glib", "glibc", "glycin", "graphene", "gtk4", "hicolor-icon-theme", "lcms2", "libadwaita", "libgcc", "libgweather-4", "libseccomp" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/loupe")
  end,
}

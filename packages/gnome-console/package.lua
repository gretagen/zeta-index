return {
  name    = "gnome-console",
  version = "51.0-1-x86_64",
  summary = "a simple user-friendly terminal emulator for the GNOME desktop",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-console/gnome-console-51.0-1-x86_64.pkg.tar.zst",
  sha256  = "fb9b9aef5298d14281f0b971c07139df141b19d96b5e3d1d235793929d7e41c2",
  deps    = { "libdconf", "gtk4", "glib", "glibc", "hicolor-icon-theme", "libadwaita", "libgcc", "libgtop", "pango", "vte4" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/kgx")
  end,
}

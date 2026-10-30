return {
  name    = "gnome-tour",
  version = "50.0-1-x86_64",
  summary = "guided tour and greeter for GNOME",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-tour/gnome-tour-50.0-1-x86_64.pkg.tar.zst",
  sha256  = "97a10562e3fbc52ac1f8266faf66a0686b2c3222f5b84cf98d10c2eaff6d26c9",
  deps    = { "glib", "glibc", "gtk4", "hicolor-icon-theme", "libadwaita", "libgcc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/gnome-tour")
  end,
}

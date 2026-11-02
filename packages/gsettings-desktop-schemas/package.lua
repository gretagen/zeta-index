return {
  name    = "gsettings-desktop-schemas",
  version = "51.0",
  summary = "GSettings schemas for the GNOME/MATE desktop",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gsettings-desktop-schemas/gsettings-desktop-schemas-51.0.tar.gz",
  sha256  = "e4f59e107f4786b484d18bf1fa17cd61b0e0b451e45631f46121422a8bb8b6c7",
  deps    = { "glibc", "glib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/glib-2.0/schemas/org.gnome.desktop.interface.gschema.xml && test -f " .. p.install_root .. "/usr/share/glib-2.0/schemas/org.gnome.desktop.a11y.gschema.xml")
  end,
}

return {
  name    = "gsettings-desktop-schemas",
  version = "50.1",
  summary = "GSettings schemas for the GNOME/MATE desktop",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gsettings-desktop-schemas/gsettings-desktop-schemas-50.1.tar.gz",
  sha256  = "aaf4e8292053bdbe373619d69ecd9571019b5685126b6520adcccb4a61dbe285",
  deps    = { "glib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/glib-2.0/schemas/org.gnome.desktop.interface.gschema.xml")
  end,
}

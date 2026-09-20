return {
  name    = "dconf-editor",
  version = "49.0",
  summary = "GSettings editor for GNOME",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/dconf-editor/dconf-editor.pkg.tar.zst",
  sha256  = "cd6b582065a733a4e06fe2d6685074bd9e1a9ff8013364f4216ccb71c94c488f",
  deps    = { "dconf", "glib2", "gtk3", "hicolor-icon-theme", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}

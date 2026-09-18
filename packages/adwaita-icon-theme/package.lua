return {
  name    = "adwaita-icon-theme",
  version = "50.0",
  summary = "Adwaita icon theme",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/adwaita-icon-theme/adwaita-icon-theme-50.0.tar.gz",
  sha256  = "e953a40ee5c4838715d8258135c1dd36041d0bfa1b07a9e96271003f1b195b37",
  deps    = { "hicolor-icon-theme", "glib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/icons/Adwaita/index.theme -a -f " .. p.install_root .. "/usr/share/icons/Adwaita/icon-theme.cache -a -d " .. p.install_root .. "/usr/share/icons/Adwaita/scalable/places -a -d " .. p.install_root .. "/usr/share/icons/Adwaita/cursors")
  end,
}

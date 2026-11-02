return {
  name    = "adwaita-icon-theme",
  version = "51.0",
  summary = "Adwaita icon theme",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/adwaita-icon-theme/adwaita-icon-theme-51.0.tar.gz",
  sha256  = "e7bebefb74afd5cdbafe2c4bc66a0effe4be674d15e63a4b93ab2968f37ffca5",
  deps    = { "hicolor-icon-theme", "glib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/icons/Adwaita/index.theme && test -d " .. p.install_root .. "/usr/share/icons/Adwaita/cursors && test -d " .. p.install_root .. "/usr/share/icons/Adwaita/symbolic")
  end,
}

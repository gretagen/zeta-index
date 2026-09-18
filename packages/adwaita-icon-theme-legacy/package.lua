return {
  name    = "adwaita-icon-theme-legacy",
  version = "46.2",
  summary = "Full-color legacy icons for the Adwaita icon theme",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/adwaita-icon-theme-legacy/adwaita-icon-theme-legacy-46.2.tar.gz",
  sha256  = "fdf5a9b4558943aef9fb1f2e52b3ba9e6660b48e188b4537366160e63cb74280",
  deps    = { "hicolor-icon-theme", "glib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/icons/AdwaitaLegacy/index.theme -a -f " .. p.install_root .. "/usr/share/icons/AdwaitaLegacy/icon-theme.cache -a -d " .. p.install_root .. "/usr/share/icons/AdwaitaLegacy/48x48/legacy")
  end,
}

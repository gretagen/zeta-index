return {
  name    = "gnome-weather",
  version = "50.0-1-any",
  summary = "access current weather conditions and forecasts",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-weather/gnome-weather-50.0-1-any.pkg.tar.zst",
  sha256  = "3328eade2ed186790c03f7235e058f7a48d48ff3d4338f3cde584d8bd5193959",
  deps    = { "libdconf", "geoclue", "gjs", "gtk4", "hicolor-icon-theme", "libadwaita", "libgweather-4" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/share/applications/org.gnome.Weather.desktop")
  end,
}

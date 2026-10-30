return {
  name    = "gnome-backgrounds",
  version = "51.0.1-1-any",
  summary = "background images and data for GNOME",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-backgrounds/gnome-backgrounds-51.0.1-1-any.pkg.tar.zst",
  sha256  = "c121a9dd05ae6c98d838ad3e278aaa8e89cc1a7f148f9abc7d5a8a886eba6f1b",
  deps    = { "libjxl" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/share/backgrounds/gnome/adwaita-d.jxl")
  end,
}

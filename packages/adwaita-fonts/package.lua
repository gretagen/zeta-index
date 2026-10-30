return {
  name    = "adwaita-fonts",
  version = "51.0-2-any",
  summary = "Adwaita fonts for GNOME",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/adwaita-fonts/adwaita-fonts-51.0-2-any.pkg.tar.zst",
  sha256  = "f27dd3b4700ef61bed117a6106013b7181ee9348ba038784ccfe5091ef172e4d",
  deps    = {  },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/share/fonts/Adwaita/AdwaitaMono-Bold.ttf")
  end,
}

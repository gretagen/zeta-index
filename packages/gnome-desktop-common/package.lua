return {
  name    = "gnome-desktop-common",
  version = "51.0-1-x86_64",
  summary = "GNOME desktop library common data (help, locales)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-desktop-common/gnome-desktop-common-51.0-1-x86_64.pkg.tar.zst",
  sha256  = "414c07bd65ae19d86094f34e04f7e7b499e645d3938863c524ed77e9b915902b",
  deps    = {  },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/share/help")
  end,
}

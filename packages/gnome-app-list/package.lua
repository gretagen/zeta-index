return {
  name    = "gnome-app-list",
  version = "3.0-1-any",
  summary = "provides app recommendation data for the GNOME project",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-app-list/gnome-app-list-3.0-1-any.pkg.tar.zst",
  sha256  = "40784abd1112353c7a97d8c1c74493daaea4ffcec9d1bc17451ea529c822fc8c",
  deps    = {},
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/share/swcatalog/xml/org.gnome.App-list.xml")
  end,
}

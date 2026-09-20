return {
  name    = "libdbusmenu-glib",
  version = "18.10.20180917",
  summary = "Library for passing menus over DBus",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libdbusmenu-glib/libdbusmenu-glib.pkg.tar.zst",
  sha256  = "cd95a3dd2ab7de4a1f0295bcdbe4db1ae7b35771e195faf2696bc94659c6bd60",
  deps    = { "glib2", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}

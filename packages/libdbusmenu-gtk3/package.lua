return {
  name    = "libdbusmenu-gtk3",
  version = "18.10.20180917",
  summary = "Library for passing menus over DBus (GTK+ 3 library)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libdbusmenu-gtk3/libdbusmenu-gtk3.pkg.tar.zst",
  sha256  = "4b5ce5d42a2357ddc6924259df2579f4f231813fdf6fe42f00059bfe75d8b10d",
  deps    = { "libdbusmenu-glib", "at-spi2-core", "gdk-pixbuf2", "glib2", "gtk3", "pango", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}

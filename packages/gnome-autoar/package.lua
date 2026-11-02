return {
  name    = "gnome-autoar",
  version = "0.5.2",
  summary = "GNOME archive extraction library (gir-enabled)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gnome-autoar/gnome-autoar-0.5.2.tar.gz",
  sha256  = "0120de67dac949a64ace4f2dd49f2e6584a2877e0fc258cb188756ab60ed7739",
  deps    = { "glibc", "glib", "gtk4", "gobject-introspection", "libarchive" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libgnome-autoar*.so* | grep -q . && ls " .. p.install_root .. "/usr/share/gir-1.0/GnomeAutoar*.gir | grep -q . && ls " .. p.install_root .. "/usr/lib/girepository-1.0/GnomeAutoar*.typelib | grep -q .")
  end,
}

return {
  name    = "gdk-pixbuf",
  version = "2.42.12",
  summary = "Image loading and scaling library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gdk-pixbuf/gdk-pixbuf-2.42.12.tar.gz",
  sha256  = "44c464a8e64c022853cd34e7d520b9eb83e7a2f7647ddd4e6bcb766b7ec6b9b7",
  deps    = { "glibc", "libpng", "libz", "shared-mime-info" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libgdk_pixbuf-2.0.so.0 && readelf -d " .. p.install_root .. "/usr/lib/libgdk_pixbuf-2.0.so.0 | grep -q 'libgdk_pixbuf-2.0.so.0'")
  end,
}

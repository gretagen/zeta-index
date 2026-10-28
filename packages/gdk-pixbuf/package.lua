return {
  name    = "gdk-pixbuf",
  version = "2.42.12-3",
  summary = "Image loading library (gir-enabled rebuild)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gdk-pixbuf/gdk-pixbuf-2.42.12-3.tar.gz",
  sha256  = "7a1010b00d479aab298a4aef5781552d10f3f6d995565b3987108870a1964d61",
  deps    = { "glibc", "glib", "libpng", "libjpeg-turbo", "shared-mime-info", "libtiff", "gobject-introspection" },
  archive = { strip = 1 },
}

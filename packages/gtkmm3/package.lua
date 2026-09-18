return {
  name    = "gtkmm3",
  version = "3.24.7",
  summary = "C++ bindings for GTK+ 3",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gtkmm3/gtkmm3-3.24.7.tar.gz",
  sha256  = "87227fa5589cfd17163a19d650cec7748e1a7761ff1a9068cc265c32560d202c",
  deps    = { "glibc", "glibmm", "cairomm", "atkmm", "pangomm", "glib", "at-spi2-core", "gtk3", "pango", "cairo", "gdk-pixbuf", "libsigc++2" },
  archive = { strip = 1 },
}

return {
  name    = "gtkmm4",
  version = "4.24.0",
  summary = "C++ bindings for GTK+ 4",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gtkmm4/gtkmm4-4.24.0.tar.gz",
  sha256  = "83594ed9ba7f3094c6b18d8d7af48308c1281613714c8165686ee52d1d78e297",
  deps    = { "glibc", "gcc", "gtk4", "cairomm", "glibmm", "pangomm", "gdk-pixbuf" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libgtkmm-4.0.so.0 && test -f " .. p.install_root .. "/usr/lib/libgtkmm-4.0.so && test -f " .. p.install_root .. "/usr/lib/pkgconfig/gtkmm-4.0.pc && test -f " .. p.install_root .. "/usr/include/gtkmm-4.0/gtkmm.h")
  end,
}

return {
  name    = "gdkmm",
  version = "3.24.11",
  summary = "C++ bindings for GDK (gdkmm, from the gtkmm suite)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gdkmm/gdkmm-3.24.11.tar.gz",
  sha256  = "795d602589533a39b91cc6ea78f3c07cf4ab34885eb401be5253b0ead2a5331c",
  deps    = { "glibc", "gtk3", "glibmm", "pangomm", "cairomm", "gobject-introspection" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/pkgconfig/gdkmm-3.0.pc && test -e " .. p.install_root .. "/usr/lib/libgdkmm-3.0.so && test -f " .. p.install_root .. "/usr/lib/gdkmm-3.0/include/gdkmmconfig.h")
  end,
}

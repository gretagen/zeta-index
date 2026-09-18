return {
  name    = "gtkmm4",
  version = "4.14.0",
  summary = "C++ bindings for GTK+ 4",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gtkmm4/gtkmm4-4.14.0.tar.gz",
  sha256  = "fb0a68a35051939f7e52ad43160fcb64b4e840856bbfb7cb4e61348954d284f7",
  deps    = { "glibc", "cairomm", "glibmm", "gtk4", "pangomm" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libgtkmm-4.0.so.1 && test -f " .. p.install_root .. "/usr/lib/pkgconfig/gtkmm-4.0.pc")
  end,
}

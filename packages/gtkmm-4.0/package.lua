return {
  name    = "gtkmm-4.0",
  version = "4.24.0-1-x86_64",
  summary = "c++ bindings for GTK 4",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gtkmm-4.0/gtkmm-4.0-4.24.0-1-x86_64.pkg.tar.zst",
  sha256  = "7270572c24d18c6e937386ddd43e96d3f1de4a00746a5d92a68b0cdd9d4c1e07",
  deps    = { "cairo", "cairomm-1.16", "gdk-pixbuf", "glib", "glibc", "glibmm-2.68", "graphene", "gtk4", "libgcc", "libsigc++-3.0", "libstdc++", "pangomm-2.48", "vulkan-loader" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgtkmm-4.0.so.0.0.0")
  end,
}

return {
  name    = "glibmm-2.68",
  version = "2.90.0-1-x86_64",
  summary = "c++ bindings for GLib",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/glibmm-2.68/glibmm-2.68-2.90.0-1-x86_64.pkg.tar.zst",
  sha256  = "4e2e9884030d84069af1367a550345d2b3c7506eb2e0c590c4c0f78d870e398b",
  deps    = { "glib", "glibc", "libgcc", "libsigc++-3.0", "libstdc++", "perl" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgiomm-2.68.so.1.3.0")
  end,
}

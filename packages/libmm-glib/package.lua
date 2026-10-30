return {
  name    = "libmm-glib",
  version = "1.24.2-2-x86_64",
  summary = "ModemManager GLib library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libmm-glib/libmm-glib-1.24.2-2-x86_64.pkg.tar.zst",
  sha256  = "c0cf1baea2fbfa0b0dc858b32140b3560943b09cc27f814f349b47fd7b2a924b",
  deps    = { "glib", "glibc", "libgcc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libmm-glib.so")
  end,
}

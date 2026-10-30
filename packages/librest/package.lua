return {
  name    = "librest",
  version = "0.10.2-2-x86_64",
  summary = "REST helper library for GNOME (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/librest/librest-0.10.2-2-x86_64.pkg.tar.zst",
  sha256  = "635651df943391e9d7b12598174daa53eee26b9b19020d1ce5e6a52796df9b33",
  deps    = { "glib", "glibc", "libjson-glib", "libgcc", "libsoup3", "libxml2" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/librest-1.0.so")
  end,
}

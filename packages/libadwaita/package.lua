return {
  name    = "libadwaita",
  version = "1.10.0-1-x86_64",
  summary = "Building blocks for modern GTK 4 applications (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libadwaita/libadwaita-1.10.0-1-x86_64.pkg.tar.zst",
  sha256  = "9db0082481173f109dbe4af6a52fc3ca1d983b240ea67a5ab71a894f4db164cf",
  deps    = { "glibc", "glib", "graphene", "fribidi", "pango", "gtk4", "ministream" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libadwaita-1.so.0")
  end,
}

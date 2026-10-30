return {
  name    = "colord-gtk4",
  version = "0.3.1-1-x86_64",
  summary = "GTK 4 integration for colord (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/colord-gtk4/colord-gtk4-0.3.1-1-x86_64.pkg.tar.zst",
  sha256  = "77d7ceb295654e44bd7410146c13c310cd55cf18be6d1014f20597115bc464da",
  deps    = { "colord-gtk-common", "cairo", "glib", "glibc", "gtk4", "libcolord" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libcolord-gtk4.so")
  end,
}

return {
  name    = "libportal-gtk4",
  version = "0.11.0-1-x86_64",
  summary = "gIO-style async APIs for most Flatpak portals - GTK 4 backend",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libportal-gtk4/libportal-gtk4-0.11.0-1-x86_64.pkg.tar.zst",
  sha256  = "d4f4af259afc5a1f155f95be06cd36a708c275f1dd5d7adcecaceec9fa913d9b",
  deps    = { "glib", "glibc", "libgcc", "libportal", "gtk4" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libportal-gtk4.so.1.0.0")
  end,
}

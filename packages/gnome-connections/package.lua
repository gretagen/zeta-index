return {
  name    = "gnome-connections",
  version = "51.0-1-x86_64",
  summary = "remote desktop client for the GNOME desktop environment",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-connections/gnome-connections-51.0-1-x86_64.pkg.tar.zst",
  sha256  = "b868e1ea46b4e6179c3c8117cf19ec337e5fc8744685eb34b62f4b88a4f69ae0",
  deps    = { "cairo", "libdconf", "fuse3", "gdk-pixbuf", "glib", "glibc", "gtk3", "hicolor-icon-theme", "libhandy", "libsecret", "libxml2" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/gnome-connections")
  end,
}

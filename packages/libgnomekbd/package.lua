return {
  name    = "libgnomekbd",
  version = "3.28.1-2-x86_64",
  summary = "GNOME keyboard configuration library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libgnomekbd/libgnomekbd-3.28.1-2-x86_64.pkg.tar.zst",
  sha256  = "c5aa5e7c93e462f85acbe89811d4dc86602b2b7a89293731ba6c41ab185f8c87",
  deps    = { "cairo", "libdconf", "gdk-pixbuf", "glib", "glibc", "gtk3", "libX11", "libxklavier", "pango" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgnomekbd.so")
  end,
}

return {
  name    = "libmatekbd",
  version = "1.28.0",
  summary = "Keyboard library for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libmatekbd/libmatekbd-1.28.0.tar.gz",
  sha256  = "3b7f34af0cb0884b05c9b5b171e8a3d83a614f9fa82da73abe7c90a450c5fcd5",
  deps    = { "cairo", "gdk-pixbuf", "glib", "gtk3", "libX11", "libxklavier", "pango" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\" && test -f " .. p.install_root .. "/usr/lib/pkgconfig/libmatekbd.pc")
  end,
}

return {
  name    = "gtk2",
  version = "2.24.33",
  summary = "GTK+ 2 toolkit (legacy apps and theme engines)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gtk2/gtk2-2.24.33.tar.gz",
  sha256  = "5f6d49f176b30d8bb9ebaccfd51352a90d1598b1b31f95013b863002076b056a",
  deps    = { "libcups", "at-spi2-core", "libXdamage", "libXcomposite", "glibc", "glib", "cairo", "pango", "gdk-pixbuf", "atk", "libX11", "libXext", "libXrender", "libXinerama", "libXrandr", "libXcursor", "libXfixes", "pango" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/pkgconfig/gtk+-2.0.pc || test -f " .. p.install_root .. "/usr/lib64/pkgconfig/gtk+-2.0.pc")
  end,
}

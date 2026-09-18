return {
  name    = "gtk4",
  version = "4.14.5",
  summary = "GTK+ 4 toolkit (X11 + Wayland)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gtk4/gtk4-4.14.5.tar.gz",
  sha256  = "ede10da919d64d5713a13bd1b953c7b96cf64b4282042c932b996302918da42f",
  deps    = { "glibc", "at-spi2-core", "cairo", "fontconfig", "fribidi", "gdk-pixbuf", "graphene", "harfbuzz", "libX11", "libXcomposite", "libXcursor", "libXdamage", "libXext", "libXfixes", "libXi", "libXinerama", "libXrandr", "libepoxy", "libz", "pango", "wayland", "wayland-protocols", "xkbcommon" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libgtk-4.so.1 && test -f " .. p.install_root .. "/usr/lib/pkgconfig/gtk4.pc")
  end,
}

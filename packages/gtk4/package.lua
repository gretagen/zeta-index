return {
  name    = "gtk4",
  version = "4.14.5-2",
  summary = "GTK+ 4 toolkit (X11 + Wayland)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gtk4/gtk4-4.14.5-2.tar.gz",
  sha256  = "4cf3d5037363358578e6669166774d0ee86d97888c4a7550cd2822aaeaf07e8b",
  deps    = { "glibc", "at-spi2-core", "cairo", "fontconfig", "fribidi", "gdk-pixbuf", "graphene", "harfbuzz", "libX11", "libXcomposite", "libXcursor", "libXdamage", "libXext", "libXfixes", "libXi", "libXinerama", "libXrandr", "libepoxy", "libz", "pango", "wayland", "wayland-protocols", "xkbcommon", "libcups", "librsvg" },
  archive = { strip = 1 },
}

return {
  name    = "gtk3",
  version = "3.24.50-2",
  summary = "GTK+ 3 toolkit (X11 + Wayland, gir-enabled rebuild)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gtk3/gtk3-3.24.50-2.tar.gz",
  sha256  = "7cc18cc5caf335baef3bf8c37813c4eedeff4ed0f0a5c4c9e2fc01476f4cc63b",
  deps    = { "glibc", "at-spi2-core", "cairo", "fontconfig", "fribidi", "gdk-pixbuf", "harfbuzz", "libX11", "libXcomposite", "libXcursor", "libXdamage", "libXext", "libXfixes", "libXi", "libXinerama", "libXrandr", "libepoxy", "libglvnd", "libz", "pango", "wayland", "xkbcommon", "libcups", "gobject-introspection" },
  archive = { strip = 1 },
}

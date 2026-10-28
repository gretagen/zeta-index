return {
  name    = "pango",
  version = "1.56.3-2",
  summary = "Text rendering and layout (gir-enabled rebuild)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/pango/pango-1.56.3-2.tar.gz",
  sha256  = "14691d9999090f7694c62c3899d8e48bf010bfd353e7b8d075ab0c38c01b86f1",
  deps    = { "glibc", "cairo", "harfbuzz", "fribidi", "fontconfig", "freetype", "libXft", "libXrender", "glib", "gobject-introspection" },
  archive = { strip = 1 },
}

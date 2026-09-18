return {
  name    = "librsvg",
  version = "2.60.0",
  summary = "SVG rendering library (rsvg)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/librsvg/librsvg-2.60.0.tar.gz",
  sha256  = "7b294531fc88237b9efad4848f51a0c6b1ff54b1b29bd8d171cbd345f02a26fc",
  deps    = { "glibc", "cairo", "dav1d", "fontconfig", "gdk-pixbuf", "glib", "libxml2", "pango" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/librsvg-2.so.2")
  end,
}

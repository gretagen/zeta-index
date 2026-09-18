return {
  name    = "pango",
  version = "1.56.3",
  summary = "Text layout and rendering library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/pango/pango-1.56.3.tar.gz",
  sha256  = "ec5f48d5964a20277973da518ef971620607157c51a7fd50c0e3bd4dd42c7541",
  deps    = { "glibc", "cairo", "harfbuzz", "fribidi", "fontconfig", "freetype", "libXft", "libXrender" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libpango-1.0.so.0 && test -f " .. p.install_root .. "/usr/lib/libpangocairo-1.0.so.0 && readelf -d " .. p.install_root .. "/usr/lib/libpangocairo-1.0.so.0 | grep -q 'libpangocairo-1.0.so.0'")
  end,
}

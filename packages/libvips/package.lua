return {
  name    = "libvips",
  version = "8.18.7-1-x86_64",
  summary = "a fast image processing library with low memory needs",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libvips/libvips-8.18.7-1-x86_64.pkg.tar.zst",
  sha256  = "b73f0ccdc7857a325767725ae302c29a3436b0bde49ce7aedcfcc45a6b21dd0b",
  deps    = { "cairo", "cfitsio", "expat", "fftw", "fontconfig", "glib", "glibc", "highway", "lcms2", "libarchive", "libcgif", "libexif", "libgcc", "libimagequant", "libjpeg-turbo", "libmatio", "libpng", "libraw", "librsvg", "libstdc++", "libtiff", "libwebp", "openexr", "openjpeg2", "pango", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libvips-cpp.so.42.20.7")
  end,
}

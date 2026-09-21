return {
  name    = "imagemagick",
  version = "7.1.2.31",
  summary = "Image manipulation software and libraries",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/imagemagick/imagemagick.pkg.tar.zst",
  sha256  = "9eb113fa6bbef118f79b1aa5beeaa3209b2dc1f55dde4170f29ab57979373c46",
  deps    = { "glibc", "bzip2", "fontconfig", "freetype", "ghostscript", "glib", "lcms2", "libjpeg-turbo", "libpng", "libtiff", "libwebp", "libX11", "libXext", "pango", "perl", "zstd" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/magick")
  end,
}

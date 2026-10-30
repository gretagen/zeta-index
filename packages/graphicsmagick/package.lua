return {
  name    = "graphicsmagick",
  version = "1.3.49-3-x86_64",
  summary = "image processing system",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/graphicsmagick/graphicsmagick-1.3.49-3-x86_64.pkg.tar.zst",
  sha256  = "6a610fdfb0769faa773e1b337108124ef5af77bfe737f604dac710bf8070a1c9",
  deps    = { "bzip2", "freetype", "lcms2", "libltdl", "libpng", "libtiff", "libwebp", "libXext", "xz-utils" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libGraphicsMagick++.so.12.9.1")
  end,
}

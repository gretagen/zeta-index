return {
  name    = "libcupsfilters",
  version = "2.2.1.r32.gd49e9284-1-x86_64",
  summary = "openPrinting CUPS Filters - contains all the code of the filters of the former cups-filters",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libcupsfilters/libcupsfilters-2.2.1.r32.gd49e9284-1-x86_64.pkg.tar.zst",
  sha256  = "7013d25ada1d9c8ce8d5be3d9fdf516bd0b7a659e3b9983d0a29e5549099bd64",
  deps    = { "libcups", "libexif", "pdfio", "libjxl", "poppler", "libjpeg-turbo", "libpng", "libtiff", "lcms2", "fontconfig", "glibc", "dbus" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libcupsfilters.so.2.0.0")
  end,
}

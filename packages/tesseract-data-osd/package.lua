return {
  name    = "tesseract-data-osd",
  version = "4.1.0-5-any",
  summary = "Tesseract OCR orientation/script detection data (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/tesseract-data-osd/tesseract-data-osd-4.1.0-5-any.pkg.tar.zst",
  sha256  = "985ba497693eaab62bb71f47bd1625b907f8feacc29edb6b94579f82c38ace67",
  deps    = {},
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/tessdata/osd.traineddata")
  end,
}

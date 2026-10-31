return {
  name    = "tesseract-data-eng",
  version = "4.1.0-5-any",
  summary = "Tesseract OCR English language data (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/tesseract-data-eng/tesseract-data-eng-4.1.0-5-any.pkg.tar.zst",
  sha256  = "f6dfc8fd7f70295ce74901b1d1e1a80aaead6430680901ad212074c5bbb68323",
  deps    = {},
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/tessdata/eng.traineddata")
  end,
}

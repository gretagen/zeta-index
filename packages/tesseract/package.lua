return {
  name    = "tesseract",
  version = "5.5.4-1-x86_64",
  summary = "OCR engine (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/tesseract/tesseract-5.5.4-1-x86_64.pkg.tar.zst",
  sha256  = "6c33ced8c8f2b82aaeaf88a7b670b144f3c4501368477db2bb83e03a2c0cc625",
  deps    = { "glibc", "libstdc++", "libgcc", "libgomp", "leptonica", "libarchive", "libcurl", "tesseract-data-eng", "tesseract-data-osd" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/tesseract")
  end,
}

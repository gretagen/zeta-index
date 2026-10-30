return {
  name    = "pdfio",
  version = "1.6.5-1-x86_64",
  summary = "simple C library for reading and writing PDF files",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/pdfio/pdfio-1.6.5-1-x86_64.pkg.tar.zst",
  sha256  = "210f063b6e4c6201aa87498181c258dd6d90c413867cceaf9425d99043a507d0",
  deps    = { "libpng", "libz", "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libpdfio.so.1")
  end,
}

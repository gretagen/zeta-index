return {
  name    = "pdfgrep",
  version = "2.2.0-6-x86_64",
  summary = "Search text in PDF files (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/pdfgrep/pdfgrep-2.2.0-6-x86_64.pkg.tar.zst",
  sha256  = "eb9953297f921f34e1c7930f2dbcb3d8c224d241b0eb65f949f21f60aa8f09bb",
  deps    = { "glibc", "libstdc++", "libgcc", "poppler", "pcre2", "libgcrypt" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/pdfgrep")
  end,
}

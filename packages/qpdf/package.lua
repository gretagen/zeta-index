return {
  name    = "qpdf",
  version = "12.4.2-1-x86_64",
  summary = "Command-line tool for PDF transformations (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/qpdf/qpdf-12.4.2-1-x86_64.pkg.tar.zst",
  sha256  = "682e8bacfc69ab340bc5ea3c8f3b9e6f5f974868235374bbd0f11b2650ed343f",
  deps    = { "glibc", "libstdc++", "libgcc", "libz", "libjpeg-turbo", "openssl", "gnutls" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/qpdf")
  end,
}

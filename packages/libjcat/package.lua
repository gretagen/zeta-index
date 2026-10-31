return {
  name    = "libjcat",
  version = "0.2.6-1-x86_64",
  summary = "Library for reading/writing Jcat files (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libjcat/libjcat-0.2.6-1-x86_64.pkg.tar.zst",
  sha256  = "2d8ecf91f8b54799474bd1e0b0f13da9e92909f121091be32dfe73b0c6f9255b",
  deps    = { "gnutls", "gpgme", "libjson-glib" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libjcat.so.1")
  end,
}

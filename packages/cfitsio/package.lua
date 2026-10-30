return {
  name    = "cfitsio",
  version = "4.7.0-1-x86_64",
  summary = "a library of C and Fortran subroutines for reading and writing data files in FITS (Flexible",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/cfitsio/cfitsio-4.7.0-1-x86_64.pkg.tar.zst",
  sha256  = "4894fa781a56026d612970fbfabffc668b3f3b91b1eb20dba60bd5b7a4b42f87",
  deps    = { "curl", "glibc", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libcfitsio.so.4.7.0")
  end,
}

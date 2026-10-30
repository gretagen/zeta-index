return {
  name    = "libmysofa",
  version = "1.3.5-1-x86_64",
  summary = "c library to read HRTFs if they are stored in the AES69-2015 SOFA format",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libmysofa/libmysofa-1.3.5-1-x86_64.pkg.tar.zst",
  sha256  = "4ebe0c6f3da8a11193a8dc6ad1a1905edcb13ffae99c4ada945f9794846674c4",
  deps    = { "glibc", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libmysofa.so.1.3.3")
  end,
}

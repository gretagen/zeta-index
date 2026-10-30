return {
  name    = "netpbm",
  version = "10.86.51-2-x86_64",
  summary = "a toolkit for manipulation of graphic images",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/netpbm/netpbm-10.86.51-2-x86_64.pkg.tar.zst",
  sha256  = "fab0192fa9698af7b0d5551f11d7366e8bc42a45ec2e49f42603a06939e75b94",
  deps    = { "bash", "glibc", "jbigkit", "libjpeg-turbo", "libpng", "libtiff", "libxml2", "perl", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libnetpbm.so.11.86")
  end,
}

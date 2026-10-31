return {
  name    = "libde265",
  version = "1.1.3-1-x86_64",
  summary = "H.265/HEVC video decoder (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libde265/libde265-1.1.3-1-x86_64.pkg.tar.zst",
  sha256  = "c39e04757d24257c153513104a807c1c5d1418dca1589d98134093398cba8dd0",
  deps    = { "glibc", "libgcc", "libstdc++" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libde265.so.0")
  end,
}

return {
  name    = "gts",
  version = "0.7.6.121130-5-x86_64",
  summary = "GNU Triangulated Surface library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gts/gts-0.7.6.121130-5-x86_64.pkg.tar.zst",
  sha256  = "d43fa67da2595bc0e649108d883537b4e461aa90e5ce2418b2e52b3dcb4b3b6b",
  deps    = { "glibc", "glib", "netpbm" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgts-0.7.so.5")
  end,
}

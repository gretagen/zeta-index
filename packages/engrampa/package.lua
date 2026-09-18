return {
  name    = "engrampa",
  version = "1.28.5",
  summary = "File archiver for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/engrampa/engrampa-1.28.5.pkg.tar.zst",
  sha256  = "773f6e30616fe38c071e8dc3c937b363c5d0ec52ca2d9e74ba1f1da478cfeb93",
  deps    = { "gtk3", "gzip", "gettext", "libarchive", "tar", "unzip", "zip" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

return {
  name    = "mate-utils",
  version = "1.28.0",
  summary = "Utilities for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mate-utils/mate-utils-1.28.0.pkg.tar.zst",
  sha256  = "eec31fb224001fa8ddc86c8b2ecbbd40f417fc2dea2c71b8ca858d30e9c7b8d9",
  deps    = { "mate-desktop", "gettext", "libcanberra", "libgtop", "libSM", "udisks2", "libxml2" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

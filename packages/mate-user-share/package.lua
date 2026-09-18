return {
  name    = "mate-user-share",
  version = "1.28.0",
  summary = "User file sharing for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mate-user-share/mate-user-share-1.28.0.pkg.tar.zst",
  sha256  = "6adddf7431190af6273bbd65487e76560b818471d9ba4b7bb79e43b3bf5830fc",
  deps    = { "gtk3", "gettext" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

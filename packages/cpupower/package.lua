return {
  name    = "cpupower",
  version = "7.2.6",
  summary = "CPU power management tools (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/cpupower/cpupower-7.2.6.pkg.tar.zst",
  sha256  = "25bfdac4735657744cea8e58385db6094d496c4e9697651475ceca8a0a08a6dc",
  deps    = { "pciutils" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

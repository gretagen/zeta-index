return {
  name    = "wireless_tools",
  version = "30.pre9-5-x86_64",
  summary = "Wireless tools (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/wireless_tools/wireless_tools-30.pre9-5-x86_64.pkg.tar.zst",
  sha256  = "4c6baa440b0d56a6d39828f79e9d47b3763d9c031e3f7a9a23366e515cdb87bb",
  deps    = {},
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

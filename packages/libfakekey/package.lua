return {
  name    = "libfakekey",
  version = "0.3-4-x86_64",
  summary = "Fake keyboard input library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libfakekey/libfakekey-0.3-4-x86_64.pkg.tar.zst",
  sha256  = "6b231e3df499bc8a14749fa2feaedb3019f404d39695701427ad793ab6ace54d",
  deps    = { "libXtst" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

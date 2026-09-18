return {
  name    = "mate-calc",
  version = "1.28.0",
  summary = "Calculator for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mate-calc/mate-calc-1.28.0.pkg.tar.zst",
  sha256  = "71f509b98fcdfc7b6649fa7dfb1c64090a7fc3da8d9d8bdfd2341eb45359b270",
  deps    = { "gtk3", "gettext" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

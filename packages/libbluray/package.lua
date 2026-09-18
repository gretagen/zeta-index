return {
  name    = "libbluray",
  version = "1.5.1",
  summary = "Blu-ray disc library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libbluray/libbluray-1.5.1.pkg.tar.zst",
  sha256  = "69f006d2a282f28fee68b01f617528f04bec475ac67c03e334f03c606b7cb104",
  deps    = { "fontconfig", "libxml2" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

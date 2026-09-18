return {
  name    = "hyphen",
  version = "2.8.9",
  summary = "Hyphenation library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/hyphen/hyphen-2.8.9.pkg.tar.zst",
  sha256  = "06d5afbaf7021b92c3a54ced6177ae516bebd33845824ce33767970e482668d7",
  deps    = { "perl" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

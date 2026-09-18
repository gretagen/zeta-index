return {
  name    = "libspectre",
  version = "0.2.12-2-x86_64",
  summary = "PostScript rendering library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libspectre/libspectre-0.2.12-2-x86_64.pkg.tar.zst",
  sha256  = "8daaeff1bce7483c9b77fdf96fb58d0e62c15ff5c0709e6570eb64a9a90a0fa9",
  deps    = {},
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

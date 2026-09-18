return {
  name    = "libcdio-paranoia",
  version = "10.2+2.0.2-3-x86_64",
  summary = "CD audio extraction library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libcdio-paranoia/libcdio-paranoia-10.2+2.0.2-3-x86_64.pkg.tar.zst",
  sha256  = "9b85bf9d7abb252f3af15c4a759cb7b9013143eb6399207d11e636d13fcd857c",
  deps    = { "libcdio" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

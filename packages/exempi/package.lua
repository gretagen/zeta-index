return {
  name    = "exempi",
  version = "2.6.6",
  summary = "XMP metadata library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/exempi/exempi-2.6.6-3-x86_64.pkg.tar.zst",
  sha256  = "934db44cb710c52b2784e510c5f0b8432ff8cff401b411831194c690967d9f89",
  deps    = { "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/")
  end,
}

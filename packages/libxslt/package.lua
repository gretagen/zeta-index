return {
  name    = "libxslt",
  version = "1.1.45-2-x86_64",
  summary = "XSLT library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libxslt/libxslt-1.1.45-2-x86_64.pkg.tar.zst",
  sha256  = "05777116162528f360cf50c411c232176f64dc856c2199f6eb5199af77362c6a",
  deps    = { "libgcrypt", "libxml2" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

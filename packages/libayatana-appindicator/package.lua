return {
  name    = "libayatana-appindicator",
  version = "0.6.0-2-x86_64",
  summary = "Application indicator library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libayatana-appindicator/libayatana-appindicator-0.6.0-2-x86_64.pkg.tar.zst",
  sha256  = "6fa93768d009176a8cf084f89c541967bdbc3b3af97c76290435b423436932f1",
  deps    = { "glib", "gtk3" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

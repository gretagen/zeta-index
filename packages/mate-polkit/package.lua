return {
  name    = "mate-polkit",
  version = "1.28.1",
  summary = "Polkit agent for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mate-polkit/mate-polkit-1.28.1.pkg.tar.zst",
  sha256  = "bc3f5f7883046243c903c348da10686c6032750090437ab30a8725c068060685",
  deps    = { "gtk3", "polkit", "gettext" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

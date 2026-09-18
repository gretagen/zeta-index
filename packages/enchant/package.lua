return {
  name    = "enchant",
  version = "2.8.21",
  summary = "Spell-checking library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/enchant/enchant-2.8.21.pkg.tar.zst",
  sha256  = "019efd404da395c3d0c4e8a1aa15ced72d340b1b9f18900a538e13d8f917c75e",
  deps    = { "glib" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

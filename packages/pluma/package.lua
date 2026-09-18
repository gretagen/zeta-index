return {
  name    = "pluma",
  version = "1.28.1",
  summary = "Text editor for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/pluma/pluma-1.28.1.pkg.tar.zst",
  sha256  = "52992741002f0bbf3a6886eb646ea425e286b5dd3637ed9c37f726ceea0b01ea",
  deps    = { "iso-codes", "mate-desktop", "zenity", "gtksourceview4", "libpeas", "gettext", "enchant", "libSM" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

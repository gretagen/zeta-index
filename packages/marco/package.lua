return {
  name    = "marco",
  version = "1.29.0",
  summary = "Window manager for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/marco/marco-1.29.0.pkg.tar.zst",
  sha256  = "42a088dede2e56b9f3032d51532468b90121154ab99ad08058aa89c2d0eddee9",
  deps    = { "libcanberra", "libgtop", "mate-desktop", "zenity", "libXpresent", "gettext", "libXres", "libSM" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

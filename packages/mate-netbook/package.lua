return {
  name    = "mate-netbook",
  version = "1.27.0",
  summary = "Netbook mode for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mate-netbook/mate-netbook-1.27.0.pkg.tar.zst",
  sha256  = "018deb6dc96e7f45c7e342579eef328d1633dd54847718271d2d2fd1dc5c985d",
  deps    = { "libfakekey", "mate-panel", "gettext" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

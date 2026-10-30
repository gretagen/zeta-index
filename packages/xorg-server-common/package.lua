return {
  name    = "xorg-server-common",
  version = "21.1.25-2-x86_64",
  summary = "xorg server common files",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/xorg-server-common/xorg-server-common-21.1.25-2-x86_64.pkg.tar.zst",
  sha256  = "851b8e7ad135d99ce263334f64512a10c69d6b19231a6de48953fe44227c0dcc",
  deps    = { "xkeyboard-config", "xorg-xkbcomp", "xorg-setxkbmap" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/xorg/protocol.txt")
  end,
}

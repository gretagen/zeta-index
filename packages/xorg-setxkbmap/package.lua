return {
  name    = "xorg-setxkbmap",
  version = "1.3.5-1-x86_64",
  summary = "set the keyboard using the X Keyboard Extension",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/xorg-setxkbmap/xorg-setxkbmap-1.3.5-1-x86_64.pkg.tar.zst",
  sha256  = "dc1dce9a0aa737d39344d15232a62ab6b1963bb5763360bf166c11699c37e3f5",
  deps    = { "libXkbfile", "libXrandr", "libX11", "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/setxkbmap")
  end,
}

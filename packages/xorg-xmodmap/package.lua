return {
  name    = "xorg-xmodmap",
  version = "1.0.12",
  summary = "X11 keyboard modifier utility (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/xorg-xmodmap/xorg-xmodmap-1.0.12-1-x86_64.pkg.tar.zst",
  sha256  = "b040927d0d96084c46d591a16c67e5f456e6d93d7eb6e560191d714a4fe9f577",
  deps    = { "libX11" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/xmodmap")
  end,
}

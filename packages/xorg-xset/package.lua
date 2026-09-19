return {
  name    = "xorg-xset",
  version = "1.2.6",
  summary = "X11 user preference utility (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/xorg-xset/xorg-xset-1.2.6-1-x86_64.pkg.tar.zst",
  sha256  = "7acf9f5288256310872441b5f3105b8bed7c30e0d046e7851f346db485c0c954",
  deps    = { "libXmu", "libX11", "libXext" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/xset")
  end,
}

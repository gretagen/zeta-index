return {
  name    = "xorg-xkbcomp",
  version = "1.5.0-1-x86_64",
  summary = "x Keyboard description compiler",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/xorg-xkbcomp/xorg-xkbcomp-1.5.0-1-x86_64.pkg.tar.zst",
  sha256  = "662f4ad50763b9d4192bb4f2bbd81ba3c50630a0ec2a83a13deb8770f785734d",
  deps    = { "libXkbfile", "libX11", "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/xkbcomp")
  end,
}

return {
  name    = "xrandr",
  version = "1.5.4",
  summary = "X RandR extension display configuration tool",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xrandr/xrandr-1.5.4.tar.gz",
  sha256  = "4ef00242ff08e5524694b97d3c777c3f3e4498c547ab966511ceab10b5ea3e3a",
  deps    = { "glibc", "libX11", "libXrandr", "libXrender" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/xrandr")
  end,
}

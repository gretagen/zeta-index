return {
  name    = "setxkbmap",
  version = "1.3.2",
  summary = "Set the keyboard using the X Keyboard Extension",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/setxkbmap/setxkbmap-1.3.2.tar.gz",
  sha256  = "0c10e85e8ab689055aa0c133aecdf58db69a855a3bbdff7e2f9688edde3c21f7",
  deps    = { "glibc", "libX11", "libXkbfile" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/setxkbmap")
  end,
}

return {
  name    = "kitty",
  version = "0.48.2",
  summary = "Fast, feature-rich, GPU-based terminal emulator",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kitty/kitty-0.48.2.tar.gz",
  sha256  = "0b5e736b76fe2fc4950e31d02a329ed7797957ef08e06df1d712ab0456d5a02a",
  deps    = {
    "glibc",
    "fontconfig",
    "libXcursor", "libXrandr", "libXi", "libXinerama", "libglvnd",
    "libX11", "libxcb", "dbus",
  },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/kitty")
  end,
}

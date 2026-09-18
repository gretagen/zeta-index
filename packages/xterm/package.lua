return {
  name    = "xterm",
  version = "410",
  summary = "X terminal emulator",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xterm/xterm-410.tar.gz",
  sha256  = "09b96376ffefb991c63571f7d254480b6786219131f953b2fe13066b7ca38f41",
  deps    = { "glibc", "fontconfig", "freetype", "libICE", "libX11", "libXext", "libXft", "libXaw", "libXmu", "libXt" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/xterm")
  end,
}

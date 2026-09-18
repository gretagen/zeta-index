return {
  name    = "alacritty",
  version = "0.15.1",
  summary = "GPU-accelerated terminal emulator",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/alacritty/alacritty-0.15.1.tar.gz",
  sha256  = "8d6cef2aeaa858d3a68aaf1d1df9174636642f974fd2546cb4cfe101c1c5067d",
  deps    = { "glibc", "fontconfig", "freetype", "libX11", "libxcb", "xkbcommon" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/alacritty")
  end,
}

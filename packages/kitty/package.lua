return {
  name    = "kitty",
  version = "0.50.0",
  summary = "Fast, feature-rich, GPU-based terminal emulator",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kitty/kitty-0.50.0.tar.gz",
  sha256  = "9f1d75f5b6aed30fa95cfbb0e2163b4b8bdb55e2c8f19f346761650b51d6dab0",
  deps    = { "glibc", "python", "harfbuzz", "libz", "libpng", "lcms2", "xxhash", "openssl", "pixman", "cairo", "freetype", "fontconfig", "wayland", "xkbcommon", "libxkbcommon-x11", "libX11", "libxcb", "libXcursor", "libXrandr", "libXi", "libXinerama", "egl", "libglvnd", "dbus" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/kitty && test -x " .. p.install_root .. "/usr/bin/kitten && " .. p.install_root .. "/usr/bin/kitty --version | grep -q 0.50 && test -f " .. p.install_root .. "/usr/share/terminfo/x/xterm-kitty && test -d " .. p.install_root .. "/usr/lib/kitty/shell-integration")
  end,
}

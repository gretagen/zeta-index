return {
  name    = "kitty",
  version = "0.48.2",
  summary = "Fast, feature-rich, GPU-based terminal emulator",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kitty/kitty-0.48.2.tar.gz",
  sha256  = "d370e7353511cf3f0f1683d42ccb35e20fd3ac961588dc4b89d68a6c96580cb1",
  deps    = { "glibc", "python", "ncurses", "fontconfig", "freetype", "libpng", "libz", "harfbuzz", "openssl", "bzip2", "xz-utils", "expat", "libffi", "sqlite", "readline", "cairo", "lcms2", "util-linux", "xxhash", "wayland", "xkbcommon", "libxkbcommon-x11", "libXcursor", "libXrandr", "libXi", "libXinerama", "egl", "libX11", "libxcb", "dbus" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/kitty && test -f " .. p.install_root .. "/usr/lib/kitty-extensions/python-lib.bypy.frozen && test -z \"$(find " .. p.install_root .. "/usr/lib -maxdepth 1 -name '*.so*' | head -1)\"")
  end,
}

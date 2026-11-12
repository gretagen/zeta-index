return {
  name    = "foot",
  version = "1.28.0",
  summary = "Fast Wayland terminal emulator",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/foot/foot-1.28.0.tar.gz",
  sha256  = "3396a049622c94235c9bb49814d6470adff7f5e6da2780ce50fe69307e2f3182",
  deps    = { "glibc", "fcft", "tllist", "utf8proc", "wayland", "wayland-protocols", "pixman", "xkbcommon", "fontconfig" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/foot && " .. p.install_root .. "/usr/bin/foot --version | grep -q 1.28 && test -f " .. p.install_root .. "/usr/share/man/man1/foot.1 && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/lib/pkgconfig pkg-config --exists fcft")
  end,
}

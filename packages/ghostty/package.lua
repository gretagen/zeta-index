return {
  name    = "ghostty",
  version = "1.4.0-1-x86_64",
  summary = "fast, feature-rich, and cross-platform terminal emulator",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/ghostty/ghostty-1.4.0-1-x86_64.pkg.tar.zst",
  sha256  = "ef8d952467be1df797a225db7cbb2c182858b0ff9ae064ac38343c983136f306",
  deps    = {
    "bzip2",
    "fontconfig",
    "freetype",
    "glib",
    "glibc",
    "gtk4",
    "gtk-layer-shell",
    "harfbuzz",
    "libadwaita",
    "libpng",
    "oniguruma",
    "pixman",
    "wayland",
    "libz",
    "libX11",
  },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/ghostty")
  end,
}

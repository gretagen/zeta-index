return {
  name    = "fuzzel",
  version = "1.15.0-2-x86_64",
  summary = "application launcher for wlroots based Wayland compositors",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/fuzzel/fuzzel-1.15.0-2-x86_64.pkg.tar.zst",
  sha256  = "819a563b424c1ea2aa53682cb366dd2232f2dfc6a0b1cd3e13afc3846aa07731",
  deps    = { "cairo", "fcft", "fontconfig", "libpng", "xkbcommon", "pixman", "wayland", "resvg" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/fuzzel")
  end,
}

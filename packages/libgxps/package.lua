return {
  name    = "libgxps",
  version = "0.3.2-5-x86_64",
  summary = "XPS document library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libgxps/libgxps-0.3.2-5-x86_64.pkg.tar.zst",
  sha256  = "faf01b7294b2d7f7168872f547ff65ec10ea302bb3fb4b823aad7b331e80ce9a",
  deps    = { "cairo", "freetype", "glib", "lcms2", "libarchive", "libjpeg-turbo", "libpng" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

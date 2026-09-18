return {
  name    = "libavif",
  version = "1.4.2",
  summary = "AVIF image format library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libavif/libavif-1.4.2.pkg.tar.zst",
  sha256  = "296986d8795009e86279608a311c580154d84b82d53365495d76cf28ef375441",
  deps    = { "dav1d", "libjpeg-turbo", "libpng", "libwebp", "libxml2" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

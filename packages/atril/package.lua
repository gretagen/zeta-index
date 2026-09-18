return {
  name    = "atril",
  version = "1.28.7",
  summary = "Document viewer for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/atril/atril-1.28.7.pkg.tar.zst",
  sha256  = "c0f0f5ef6a190adba5509c69f1d6b49cb4dcaad40d72786f770d1c3944782e9f",
  deps    = { "djvulibre", "libspectre", "libgxps", "libgepub", "gettext", "poppler-glib", "cairo", "webkit2gtk-4.1", "libsynctex", "mate-desktop" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

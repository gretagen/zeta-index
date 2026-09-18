return {
  name    = "poppler-glib",
  version = "26.08.0",
  summary = "GLib wrapper for poppler (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/poppler-glib/poppler-glib-26.08.0.pkg.tar.zst",
  sha256  = "804adbeba76863701c4a7f21030e77c06451924a8b7c8f97e8fe0794f1b2cc9a",
  deps    = { "poppler", "glib", "freetype", "cairo" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

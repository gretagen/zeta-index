return {
  name    = "zenity",
  version = "4.2.2",
  summary = "GTK dialog utility (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/zenity/zenity-4.2.2.pkg.tar.zst",
  sha256  = "ec6da2e71e54a71e7b9895b1b674bc5c2ed84d3b64a4d3626b65fb282228c18c",
  deps    = { "glib", "gtk4", "hicolor-icon-theme", "pango" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

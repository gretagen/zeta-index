return {
  name    = "gnome-font-viewer",
  version = "50.0-1-x86_64",
  summary = "a font viewer utility for GNOME",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-font-viewer/gnome-font-viewer-50.0-1-x86_64.pkg.tar.zst",
  sha256  = "32c98b552748328d55d18d13b1678155aa873538ca151f58dcf684badad2df4d",
  deps    = { "cairo", "fontconfig", "freetype", "fribidi", "glib", "glibc", "gtk4", "harfbuzz", "hicolor-icon-theme", "libadwaita", "libgcc", "pango" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/gnome-font-viewer")
  end,
}

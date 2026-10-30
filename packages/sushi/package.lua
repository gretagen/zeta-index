return {
  name    = "sushi",
  version = "51.2-1-x86_64",
  summary = "a quick previewer for Nautilus",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/sushi/sushi-51.2-1-x86_64.pkg.tar.zst",
  sha256  = "24b7d86a25158eebb5750946a5bbac2dce2c5bf5c634fba738491c643ec7995f",
  deps    = { "cairo", "freetype", "fribidi", "gjs", "glib", "glibc", "glycin-gtk4", "gst-plugins-base-libs", "gstreamer", "gtk4", "harfbuzz", "libgcc", "libX11", "pango", "papers" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/sushi")
  end,
}

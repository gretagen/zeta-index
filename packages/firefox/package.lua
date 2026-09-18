return {
  name    = "firefox",
  version = "153.0.3",
  summary = "Mozilla Firefox web browser (standalone build)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/firefox/firefox-153.0.3.tar.xz",
  sha256  = "0dfec658a760e618cbb23f95b71a57a698ffa6122560ffe0e08d9140341a625a",
  deps    = { "glibc", "alsa-lib", "at-spi2-core", "cairo", "fontconfig", "freetype", "gdk-pixbuf", "glib", "gtk3", "libX11", "libXcomposite", "libXcursor", "libXdamage", "libXext", "libXfixes", "libXi", "libXrandr", "libXrender", "libxcb", "pango" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/firefox")
  end,
}

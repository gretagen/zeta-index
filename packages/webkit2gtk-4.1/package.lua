return {
  name    = "webkit2gtk-4.1",
  version = "2.52.6-2",
  summary = "Web browser engine library (GTK3 + soup3, built from source)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/webkit2gtk-4.1/webkit2gtk-4.1-2.52.6-2.tar.gz",
  sha256  = "5f6221d814d0559264bdb6c369bd99fb41dab90bfed4a042a92dd765b4fd6e13",
  deps    = { "at-spi2-core", "cairo", "enchant", "fontconfig", "freetype", "gdk-pixbuf", "glib", "gstreamer", "gst-plugins-base-libs", "gst-plugins-bad-libs", "gtk3", "harfbuzz", "harfbuzz-icu", "hyphen", "icu", "lcms2", "libavif", "libdrm", "libepoxy", "libgcrypt", "libjxl", "libmanette", "libpng", "libseccomp", "libsecret", "libsoup3", "libtasn1", "libwebp", "libX11", "libxml2", "libxslt", "pango", "sqlite", "woff2", "xdg-dbus-proxy", "libz", "libyuv", "hidapi", "bubblewrap", "mesa-drivers" },
  archive = { strip = 1 },
  test = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libwebkit2gtk-4.1.so* | grep -q . && readelf -d " .. p.install_root .. "/usr/lib/libwebkit2gtk-4.1.so.0 | grep -q libicui18n.so.79 && test -x " .. p.install_root .. "/usr/lib/webkit2gtk-4.1/WebKitWebProcess && ls " .. p.install_root .. "/usr/share/gir-1.0/WebKit2-4.1.gir | grep -q .")
  end,
}

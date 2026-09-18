return {
  name    = "webkit2gtk-4.1",
  version = "2.52.6",
  summary = "Web browser engine library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/webkit2gtk-4.1/webkit2gtk-4.1-2.52.6-1-x86_64.pkg.tar.zst",
  sha256  = "6794f63428550f7e7083e788172d2c8e5d8ae17598ea00211606abcdb048da63",
  deps    = { "at-spi2-core", "cairo", "enchant", "fontconfig", "freetype", "gdk-pixbuf", "glib", "gstreamer", "gst-plugins-base-libs", "gst-plugins-bad-libs", "gtk3", "harfbuzz", "harfbuzz-icu", "hyphen", "icu", "lcms2", "libavif", "libdrm", "libepoxy", "libgcrypt", "libjxl", "libmanette", "libpng", "libseccomp", "libsecret", "libsoup3", "libtasn1", "libwebp", "libX11", "libxml2", "libxslt", "pango", "sqlite", "woff2", "xdg-dbus-proxy", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libwebkit2gtk-4.1.so*")
  end,
}

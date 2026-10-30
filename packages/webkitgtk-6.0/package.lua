return {
  name    = "webkitgtk-6.0",
  version = "2.54.2-1-x86_64",
  summary = "web content engine for GTK",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/webkitgtk-6.0/webkitgtk-6.0-2.54.2-1-x86_64.pkg.tar.zst",
  sha256  = "38806dbdad248fb6f4bc6e609b3b5bac49f2ac250c2b0514b0595fba2fee0e80",
  deps    = { "at-spi2-core", "bubblewrap", "cairo", "enchant", "expat", "fontconfig", "freetype", "gdk-pixbuf", "glib", "glibc", "gst-plugins-bad-libs", "gst-plugins-base-libs", "gstreamer", "gtk4", "harfbuzz", "harfbuzz-icu", "hyphen", "icu", "lcms2", "libatomic", "libavif", "libdrm", "mesa-full", "libepoxy", "libgcc", "libgcrypt", "libjpeg-turbo", "libjxl", "libmanette", "libpng", "libseccomp", "libsecret", "libsoup3", "libstdc++", "systemd-libs", "libtasn1", "libwebp", "libX11", "libxml2", "libxslt", "openjpeg2", "pango", "sqlite", "ttf-liberation", "wayland", "woff2", "xdg-dbus-proxy", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libjavascriptcoregtk-6.0.so.1.8.9")
  end,
}

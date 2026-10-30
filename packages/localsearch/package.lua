return {
  name    = "localsearch",
  version = "3.12.0-1-x86_64",
  summary = "filesystem indexer and metadata extractor",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/localsearch/localsearch-3.12.0-1-x86_64.pkg.tar.zst",
  sha256  = "a0ca07c76e43143f128d1318935f5bd46817970a2b0f29278475d7809a8c87c9",
  deps    = { "libdconf", "exempi", "ffmpeg", "gexiv2", "giflib", "glib", "glibc", "gst-plugins-base-libs", "gstreamer", "gupnp-dlna", "icu", "libcue", "libexif", "libgcc", "libgsf", "libgudev", "libgxps", "libiptcdata", "libjpeg-turbo", "libmediainfo", "libosinfo", "libpng", "libseccomp", "libstdc++", "libtiff", "libwebp", "libxml2", "libzip", "poppler-glib", "tinysparql", "totem-pl-parser", "upower" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/localsearch")
  end,
}

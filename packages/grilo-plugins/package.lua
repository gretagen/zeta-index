return {
  name    = "grilo-plugins",
  version = "0.3.18-3-x86_64",
  summary = "a collection of plugins for the Grilo framework",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/grilo-plugins/grilo-plugins-0.3.18-3-x86_64.pkg.tar.zst",
  sha256  = "d0adfee4d4b8b701b1bca3c0ba9d93c3a76d55ab36485171d9a42a9ac2b65415",
  deps    = { "avahi", "chromaprint", "glib", "glibc", "gom", "grilo", "gst-plugins-bad", "gstreamer", "libjson-glib", "libarchive", "libdmapsharing", "libgcc", "libgoa", "libmediaart", "liboauth", "librest", "libxml2", "lua54", "sqlite", "tinysparql", "totem-pl-parser" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/grilo-0.3/libgrlbookmarks.so")
  end,
}

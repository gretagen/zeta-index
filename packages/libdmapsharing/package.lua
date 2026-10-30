return {
  name    = "libdmapsharing",
  version = "3.9.14-1-x86_64",
  summary = "a library that implements the DMAP family of protocols",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libdmapsharing/libdmapsharing-3.9.14-1-x86_64.pkg.tar.zst",
  sha256  = "63c6d3f5680b3468e26b27e775533669a3583ea4a69e65d2895bd127e9942426",
  deps    = { "avahi", "gdk-pixbuf", "glib", "glibc", "gst-plugins-base-libs", "gstreamer", "libsoup3", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libdmapsharing-4.0.so.3.9.14")
  end,
}

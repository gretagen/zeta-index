return {
  name    = "gst-python",
  version = "1.28.8-1-x86_64",
  summary = "multimedia graph framework - python plugin",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gst-python/gst-python-1.28.8-1-x86_64.pkg.tar.zst",
  sha256  = "646b2b925db51d747f08e8cdebcaeb2be7681c56d899947c4f6022250a5b0487",
  deps    = { "gst-plugins-base-libs", "gstreamer", "glib", "glibc", "python", "python-gobject", "python-typing_extensions" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/gstreamer-1.0/libgstpython.so")
  end,
}

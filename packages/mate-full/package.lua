return {
  name    = "mate-full",
  version = "1.29",
  summary = "Full MATE desktop with all components + deps",
  deps    = {
    "mate",
    "mate-media", "mate-netbook", "mate-screensaver",
    "mate-themes", "mate-user-share", "mozo",
    "engrampa", "atril",
    "gvfs", "accountsservice", "udisks2", "vte3", "webkit2gtk-4.1",
    "gstreamer", "gst-plugins-base-libs", "gst-plugins-bad-libs",
    "poppler", "poppler-glib", "enchant", "libsecret", "libgepub",
    "libgxps", "libavif", "libmanette", "libayatana-appindicator",
    "fuse3", "gcr-4", "libblockdev", "cpupower",
  },
  install = function(p)
    p:run("echo 'Full MATE desktop installed. Use start-mate to launch.'")
  end,
}

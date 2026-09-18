return {
  name    = "gst-plugins-bad-libs",
  version = "1.28.7",
  summary = "GStreamer bad plugin libraries (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gst-plugins-bad-libs/gst-plugins-bad-libs-1.28.7.pkg.tar.zst",
  sha256  = "407f28c9c127d1df4bc90701ec386a0af318692dd786c9af1a8de6ada576d4df",
  deps    = { "gst-plugins-base-libs", "gstreamer", "glib", "libdrm", "libglvnd", "libgudev", "libusb", "libva", "libX11", "libxcb", "xkbcommon", "wayland", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

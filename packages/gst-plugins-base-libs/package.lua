return {
  name    = "gst-plugins-base-libs",
  version = "1.28.7",
  summary = "GStreamer base plugin libraries (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gst-plugins-base-libs/gst-plugins-base-libs-1.28.7.pkg.tar.zst",
  sha256  = "8b5a33c4a180ed4b5df69f320985c1a8387c877a68a140f8b6be3d8bf82a5727",
  deps    = { "gstreamer", "glib", "graphene", "iso-codes", "libdrm", "libglvnd", "libgudev", "libjpeg-turbo", "libpng", "libX11", "libxcb", "libXext", "libXv", "wayland", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}

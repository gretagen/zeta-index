return {
  name    = "gst-devtools-libs",
  version = "1.28.8-1-x86_64",
  summary = "multimedia graph framework - development and debugging libraries",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gst-devtools-libs/gst-devtools-libs-1.28.8-1-x86_64.pkg.tar.zst",
  sha256  = "4b9446b997f407525d2c070a7f14bdad7096d37601189af320f5daa516beeaa0",
  deps    = { "gst-plugins-base-libs", "gstreamer", "glib", "glibc", "libjson-glib", "orc", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgstvalidate-1.0.so.0.2808.0")
  end,
}

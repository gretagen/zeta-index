return {
  name    = "gst-plugin-pipewire",
  version = "1.6.10-1-x86_64",
  summary = "multimedia graph framework - pipewire plugin",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gst-plugin-pipewire/gst-plugin-pipewire-1.6.10-1-x86_64.pkg.tar.zst",
  sha256  = "ec029399ae09a022e9c1cec0d2b7f2d79f7e61d4b13ce114f849a8cae3cc7353",
  deps    = { "pipewire", "pipewire-audio", "glib", "glibc", "gst-plugins-base-libs", "gstreamer", "libgcc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/gstreamer-1.0/libgstpipewire.so")
  end,
}
